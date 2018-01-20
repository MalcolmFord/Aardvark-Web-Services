class CreateChangeRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :change_requests do |t|
      t.string :title
      t.text :description
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
