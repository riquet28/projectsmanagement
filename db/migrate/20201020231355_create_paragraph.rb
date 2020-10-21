class CreateParagraph < ActiveRecord::Migration[6.0]
  def change
    create_table :paragraphs do |t|
      t.string :title
      t.text :content
      t.integer :position
    end
  end
end
