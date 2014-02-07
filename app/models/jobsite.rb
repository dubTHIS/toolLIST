class Jobsite < ActiveRecord::Base
  attr_accessible :active, :end, :jobno, :location, :name, :start, :hrs_of_op
  has_many :tools
  has_many :hours
  has_many :users, through: :hours

  validates_uniqueness_of :jobno

  scope :active, :conditions => { :active => true }
  default_scope order ('start DESC')

  def self.search_jobno(search)
  	if search
  	   	find(:all, :conditions => ['jobno LIKE ?', "%#{search}%"])
  	else
  	    find(:all)
  	end
  end

  def self.search_name(search)
  	if search
  	   	find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  	else
  	    find(:all)
  	end
  end

end
