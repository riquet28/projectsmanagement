class CreateFunctionnalTests < ActiveRecord::Migration[6.0]
  def change
    create_table :functionnal_tests do |t|
      t.string :reference
      t.integer :tracker
      t.integer :tracker_number
      t.string :title
      t.string :url_link
      t.text :comment
      t.integer :position
    end
  end
end
