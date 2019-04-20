class CreatePtos < ActiveRecord::Migration[5.2]
  def change
    create_table :ptos do |t|

      t.timestamps
    end
  end
end
