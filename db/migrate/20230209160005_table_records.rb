class TableRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |record|
      record.text :content
      record.references :user, foreign_key: true
    end
    add_index :records, [:user_id]
  end
end
