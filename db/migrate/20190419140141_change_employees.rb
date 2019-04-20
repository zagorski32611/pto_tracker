class ChangeEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :first_name,    :string
    add_column :employees, :last_name,     :string
    add_column :employees, :manager,       :boolean
    add_column :employees, :total_pto,     :integer
    add_column :employees, :used_pto,      :integer
    add_column :employees, :remaining_pto, :integer
  end
end
