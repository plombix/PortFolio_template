class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  validates_uniqueness_of :user_id, scope: :product_id
end
