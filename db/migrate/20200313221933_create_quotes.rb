class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.date :date
      t.string :author
      t.text :body

      t.timestamps
    end
  end
end
