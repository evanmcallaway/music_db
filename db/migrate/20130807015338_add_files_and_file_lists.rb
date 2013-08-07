class AddFilesAndFileLists < ActiveRecord::Migration
  def up
    create_table :files do |t|
      t.timestamps
      t.integer :file_list_id
      t.string :attachment_file_name
      t.string :attachment_content_type
      t.integer :attachment_file_size
      t.datetime :attachment_updated_at
    end

    create_table :file_lists do |t|
      t.timestamps
    end

    add_column :scores, :score_file_list_id, :integer
    add_column :parts, :part_file_list_id, :integer
    add_column :musicians, :portrait_file_list_id, :integer

  end
  
  def down
  end
end
