class Provider < ActiveRecord::Base
  belongs_to :user
  has_many :products, dependent: :destroy
end
