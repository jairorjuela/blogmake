class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.text :body
      t.string :title
      t.string :author

      t.timestamps
    end
  end
end
