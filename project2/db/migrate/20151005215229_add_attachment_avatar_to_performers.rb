class AddAttachmentAvatarToPerformers < ActiveRecord::Migration
  def self.up
    change_table :performers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :performers, :avatar
  end
end
