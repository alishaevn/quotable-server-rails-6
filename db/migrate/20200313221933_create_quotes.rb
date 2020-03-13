class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.text :body
      t.string :author
      t.date :date

      t.timestamps
    end
  end
end
