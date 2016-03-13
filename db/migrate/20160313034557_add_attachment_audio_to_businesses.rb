class AddAttachmentAudioToBusinesses < ActiveRecord::Migration
  def self.up
    change_table :businesses do |t|
      t.attachment :audio
    end
  end

  def self.down
    remove_attachment :businesses, :audio
  end
end
