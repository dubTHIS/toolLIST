class Hour < ActiveRecord::Base
  attr_accessible :date, :total, :jobsite_id, :user_id
  belongs_to :jobsite
  belongs_to :user

  default_scope order: 'hours.date DESC'
  validates :date, :total, :jobsite_id, presence: true
  validates :total, numericality: { only_integer: true }
end
