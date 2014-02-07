class Hour < ActiveRecord::Base
  attr_accessible :date, :total, :jobsite_id, :user_id
  belongs_to :jobsite
  belongs_to :user

  default_scope order: 'hours.date DESC'
end
