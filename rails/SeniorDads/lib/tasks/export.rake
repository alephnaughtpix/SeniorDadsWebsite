namespace :export do
  desc "Outputs SD DB in a seeds.rb format."
  task :seeds_format => :environment do
    
    # Categories
    Category.order(:id).all.each do |category|
      puts "category_#{category.id} = Category.create(#{category.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    
    # Links 
    Link.order(:id).all.each do |link|
      puts "link_#{link.id} = Link.create(#{link.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    
  end
  
  task :sitefiles_convert => :environment do
    SiteFile.order(:id).all.each do |site_file|
      puts "site_file_#{site_file.id} = SiteFile.create(#{site_file.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end