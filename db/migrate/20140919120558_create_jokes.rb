class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.string :joke_title
      t.text :text_one
      t.text :text_two
      t.text :text_three
      t.belongs_to :joker
      t.timestamps
    end
  end
end



