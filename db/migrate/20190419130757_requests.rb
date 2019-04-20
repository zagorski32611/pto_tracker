class Requests < ActiveRecord::Migration[5.2]
  def change
    def change
      add_column      :requests, :date_requested,  :datetime
      add_reference   :requests, :employee,        index: true, foreign_key: true 
      add_column      :requests, :approved,        :boolean
      add_reference   :requests, :approved_by,     index: true, foreign_key: true
    end
  end
end
