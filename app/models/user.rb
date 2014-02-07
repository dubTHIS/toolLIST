class User < ActiveRecord::Base
  protected

  def self.find_for_database_authentication(conditions={})
    self.where("username = ?", conditions[:username]).limit(1).first 
  end
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :username, :email, :password, :password_confirmation, :remember_me, :name, :personal_phone, :work_phone, :admin
  # attr_accessible :title, :body

  validates :username, :uniqueness => {
    :case_sensitive => false
  }

  has_many :tools
  has_many :hours
  has_many :jobsites, through: :hours
end
