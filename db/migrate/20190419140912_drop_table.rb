class DropTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :Ptos, :Pto_Requests
  end
end
