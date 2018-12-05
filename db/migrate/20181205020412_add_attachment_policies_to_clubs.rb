class AddAttachmentPoliciesToClubs < ActiveRecord::Migration
  def self.up
    change_table :clubs do |t|
      t.attachment :policies
    end
  end

  def self.down
    remove_attachment :clubs, :policies
  end
end
