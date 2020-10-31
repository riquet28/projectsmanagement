class CreateSubParagraph < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_paragraphs do |t|
      t.string :title
      t.text :content
      t.integer :position
      t.belongs_to :paragraph, null: false, foreign_key: true
    end
  end
end
