class CreatePaymentPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_plans do |t|
      t.string :title
      t.text :description
      t.date :starting_date

      t.timestamps
    end
  end
end
