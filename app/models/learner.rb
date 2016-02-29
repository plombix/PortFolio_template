class Learner < ActiveRecord::Base
  belongs_to :group
  def self.group_less
	where( group_id: nil)
  end
  def self.lead
	where( sensei: 1)
  end
end
