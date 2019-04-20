class Pto < ActiveRecord::Migration[5.2]
  def change
    add_column      :ptos, :date_requested,  :datetime
    add_reference   :ptos, :employee,        index: true, foreign_key: true 
    add_column      :ptos, :approved,        :boolean
    add_column      :ptos, :total_pto,       :decimal
    add_column      :ptos, :used_pto,        :decimal
    add_column      :ptos, :remaining_pto,   :decimal
    add_reference   :ptos, :approved_by,     index: true, foreign_key: true
  end
end
