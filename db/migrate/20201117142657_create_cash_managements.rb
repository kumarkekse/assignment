class CreateCashManagements < ActiveRecord::Migration[5.2]
  def change
    create_table :cash_managements do |t|
      t.integer :initial_cash
      t.integer :cash_out
      t.integer :cash_in
      t.integer :company_id

      t.timestamps
    end
  end
end
