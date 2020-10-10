class RenameFunctionnalTestToTicket < ActiveRecord::Migration[6.0]
  def change
    rename_table :functionnal_tests, :tickets
  end
end
