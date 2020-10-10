class RenameAndRemoveColumnsToTickets < ActiveRecord::Migration[6.0]
  def change
    rename_column :tickets, :tracker_number, :issue_id
    remove_column :tickets, :reference
  end
end
