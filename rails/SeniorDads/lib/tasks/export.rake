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

    # Convert music to Links format
    order = 1
    MusicFile.order(:id).all.each do |music_file|
       music_file.order = order
      puts "music_file_#{music_file.id} = MusicFile.create(#{music_file.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
      order += 1
    end

    # Convert galleries to Links format
    Gallery.order(:id).all.each do |gallery|
      puts "gallery_#{gallery.id} = Gallery.create(#{gallery.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    order = 1
    GalleryCollection.order(:id).all.each do |gallery_collection|
      gallery_collection.order = order
      puts "gallery_collection_#{gallery_collection.id} = GalleryCollection.create(#{gallery_collection.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
      order += 1
    end

    # Members
    order = 1
    Member.order(:id).all.each do |member|
      member.order = order
      puts "member_#{member.id} = Member.create(#{member.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id', 'joined'].include?(key)}.to_s.gsub(/[{}]/,'')}, \"joined\" => \"#{member.joined}\")"
      order += 1
    end

    # Admin users
    order = 1
    User.all.each do |user|
      puts "member_#{user.id} = User.create(#{user.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
      order += 1
    end


  # Convert demos to Links format
    Demo.order(:id).all.each do |demo|
      puts "demo_#{demo.id} = Demo.create(#{demo.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id', 'release_date'].include?(key)}.to_s.gsub(/[{}]/,'')}, \"release_date\" => \"#{demo.release_date}\")"
    end
    order = 1
    DemoFileCollection.order(:id).all.each do |demo_file_collection|
      demo_file_collection.order = order
      puts "demo_file_collection_#{demo_file_collection.id} = DemoFileCollection.create(#{demo_file_collection.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
      order += 1
    end

  end
end