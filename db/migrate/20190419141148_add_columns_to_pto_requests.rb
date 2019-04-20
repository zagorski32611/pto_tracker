class AddColumnsToPtoRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :Pto_Requests, :Pto_Date, :datetime
    add_column :Pto_Requests, :Pto_Amount, :decimal
    add_column :Pto_Requests, :Approved_date, :datetime
    remove_column :Pto_Requests, :total_pto, :decimal
    remove_column :Pto_Requests, :used_pto, :decimal
    remove_column :Pto_Requests, :remaining_pto, :decimal
  end
end
