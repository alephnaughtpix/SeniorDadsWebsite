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
        music_file = MusicFile.find_by( "site_file_id" => site_file.id )
        category_id = Category.find_by( name: music_file.music_file_type.name ).id
        @musics[music_file.id] = next_link_id
      else
        category_id = Category.find_by( name: site_file.site_file_type.title ).id
      end
      puts "link_#{next_link_id} = Link.create(name: \"#{name}\", title: \"#{title}\", description: \"#{site_file.description}\", url: \"#{site_file.url}\", \"category_id\" => #{category_id})"
      next_link_id += 1
    end

    # Convert music to Links format
    next_link_id = 0 
    MusicFile.order(:id).all.each do |music_file|
      link_id = @musics[music_file.id]
      description = music_file.description.gsub(/"/,"\\\"")
      puts "music_file_#{next_link_id} = MusicFile.create(name: \"#{music_file.name}\", title: \"#{music_file.title}\", description: \"#{description}\", main_file: link_#{link_id})"
      next_link_id += 1
    end

  end
end