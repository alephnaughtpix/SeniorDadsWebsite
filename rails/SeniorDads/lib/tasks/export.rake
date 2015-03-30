namespace :export do
  desc "Outputs SD DB in a seeds.rb format."
  task :seeds_format => :environment do
    require 'active_support/inflector'
    
    # Categories
    Category.order(:id).all.each do |category|
      puts "category_#{category.id} = Category.create(#{category.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end

    next_link_id = 0 
    # Links 
    Link.order(:id).all.each do |link|
      puts "link_#{link.id} = Link.create(#{link.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
      next_link_id = link.id
    end
    
    bin = Category.find_by( name: 'bin' )
    mus = Category.find_by( name: 'mus' )
    gfx = Category.find_by( name: 'gfx' )
    url = Category.find_by( name: 'url' )
    
    @names = []
    Link.order(:id).all.each do |link|
      @names.push( link.name )
    end
    
    #Export Site files to Links
    @musics = {}
    @gfxs = {}
    @demo_files = {}
    SiteFile.order(:id).all.each do |site_file|
      fixed_name = site_file.name.gsub(/[^A-Za-z0-9]/,"").gsub(/\s/,"_").gsub(/the/i,"").camelize
      title = site_file.name.gsub(/"/,"\\\"")
      index = 1
      name = fixed_name
      while @names.include?( name ) do
        name = "#{fixed_name}#{index}"
        index += 1
      end
      @names.push(name)
      category_id = 1
      case site_file.site_file_type.title
      when "mus"
        next
#        music_file = MusicFile.find_by( "site_file_id" => site_file.id )
#        category_id = Category.find_by( name: music_file.music_file_type.name ).id
#        @musics[music_file.id] = next_link_id
      when "gfx"
        next
#        category_id = Category.find_by( name: site_file.site_file_type.title ).id
#        @gfxs[site_file.id] = next_link_id
      when "bin"
        @demo_files[site_file.id] = next_link_id
      else
        category_id = Category.find_by( name: site_file.site_file_type.title ).id
      end
      #puts "link_#{next_link_id} = Link.create(name: \"#{name}\", title: \"#{title}\", description: \"#{site_file.description}\", url: \"#{site_file.url}\", \"category_id\" => #{category_id})"
      next_link_id += 1
    end

    # Convert music to Links format
#    next_link_id = 0 
    MusicFile.order(:id).all.each do |music_file|
#      link_id = @musics[music_file.id]
#      description = music_file.description.gsub(/"/,"\\\"")
#      puts "music_file_#{next_link_id} = MusicFile.create(name: \"#{music_file.name}\", title: \"#{music_file.title}\", description: \"#{description}\", main_file: link_#{link_id})"
#      next_link_id += 1
      puts "music_file_#{music_file.id} = MusicFile.create(#{music_file.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end

    # Convert galleries to Links format
#    next_link_id = 1 
    Gallery.order(:id).all.each do |gallery|
#      pictures = []
#      title = gallery.title.gsub(/"/,"\\\"")
#      gallery.pictures.each do |picture|
#        link_id = @gfxs[picture.id]
#        pictures.push( "link_#{link_id}" )
#      end
#      pictures_declaration = "[" + pictures.join(', ') + "]"
#      puts "gallery_#{next_link_id} = Gallery.create(name: \"#{gallery.name}\", title: \"#{title}\", pictures: #{pictures_declaration})"
#      next_link_id += 1
      puts "gallery_#{gallery.id} = Gallery.create(#{gallery.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    GalleryCollection.order(:id).all.each do |gallery_collection|
      puts "gallery_collection_#{gallery_collection.id} = GalleryCollection.create(#{gallery_collection.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end

    # Members
    Member.order(:id).all.each do |member|
#      function = member.function.gsub(/"/,"\\\"")
#      join_reason = member.join_reason.gsub(/"/,"\\\"")
#      any_other_comments = member.any_other_comments.gsub(/"/,"\\\"")
#      puts "member_#{member.id} = Member.create(name: \"#{member.name}\", title: \"#{member.title}\", joined: \"#{member.joined}\", join_reason: \"#{join_reason}\", function: \"#{function}\", first_computer: \"#{member.first_computer}\", any_other_comments: \"#{any_other_comments})\", \"gallery_id\" => \"#{member.gallery.id}\", \"category_id\" => \"#{member.category.id}\") "
      puts "member_#{member.id} = Member.create(#{member.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id', 'joined'].include?(key)}.to_s.gsub(/[{}]/,'')}, \"joined\" => \"#{member.joined}\")"
    end


  # Convert demos to Links format
    Demo.order(:id).all.each do |demo|
#      function = member.function.gsub(/"/,"\\\"")
#      join_reason = member.join_reason.gsub(/"/,"\\\"")
#      any_other_comments = member.any_other_comments.gsub(/"/,"\\\"")
#      puts "member_#{member.id} = Member.create(name: \"#{member.name}\", title: \"#{member.title}\", joined: \"#{member.joined}\", join_reason: \"#{join_reason}\", function: \"#{function}\", first_computer: \"#{member.first_computer}\", any_other_comments: \"#{any_other_comments})\", \"gallery_id\" => \"#{member.gallery.id}\", \"category_id\" => \"#{member.category.id}\") "
      puts "demo_#{demo.id} = Demo.create(#{demo.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id', 'release_date'].include?(key)}.to_s.gsub(/[{}]/,'')}, \"release_date\" => \"#{demo.release_date}\")"
    end
    DemoFileCollection.order(:id).all.each do |demo_file_collection|
      puts "demo_file_collection_#{demo_file_collection.id} = DemoFileCollection.create(#{demo_file_collection.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end

  end
end