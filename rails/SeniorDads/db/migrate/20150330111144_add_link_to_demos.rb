class AddLinkToDemos < ActiveRecord::Migration
  def change
    add_reference :demos, :link, index: true
    add_reference :demos, :youtube_link, index: true
    add_reference :demos, :html5_link, index: true
    add_reference :demos, :source_link, index: true
  end
end
