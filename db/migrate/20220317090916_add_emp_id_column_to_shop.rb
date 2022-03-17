class AddEmpIdColumnToShop < ActiveRecord::Migration[7.0]
  def change
    add_column :shops, :emp_id, :string
  end
end
