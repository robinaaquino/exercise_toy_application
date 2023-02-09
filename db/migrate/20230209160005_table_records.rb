class TableRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |record|
      record.text :content
      record.integer :record_id
  end
end
