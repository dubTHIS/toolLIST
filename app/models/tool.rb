class Tool < ActiveRecord::Base
  attr_accessible :description, :id, :name, :jobsite_id, :user_id, :condition, :category
  belongs_to :jobsite
  belongs_to :user

  validates_uniqueness_of :id
  validates :name, presence: true

  scope :shop, :conditions => { :user_id => 1 }

  def self.search_id(search)
	if search
		puts "searching for " + search.to_s
	   	find(:all, :conditions => ['id LIKE ?', "%#{search}%"])
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
