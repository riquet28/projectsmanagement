class CreateActionsAndResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.string :description
      t.integer :dev, default: 0
      t.integer :staging, default: 0
      t.belongs_to :action, index: true
    end

    create_table :actions do |t|
      t.string :description
      t.belongs_to :ticket, index: true

    end
  end
end
