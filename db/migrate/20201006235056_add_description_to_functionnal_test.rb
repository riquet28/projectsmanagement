class AddDescriptionToFunctionnalTest < ActiveRecord::Migration[6.0]
  def change
    add_column :functionnal_tests, :description, :text
  end
end
