class Account < ApplicationRecord
  belongs_to :user
  belongs_to :account_type
  belongs_to :payment_plan
end
