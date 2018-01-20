class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.references :user, foreign_key: true
      t.references :account_type, foreign_key: true
      t.references :payment_plan, foreign_key: true
      t.date :next_payment

      t.timestamps
    end
  end
end
