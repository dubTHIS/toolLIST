class ApplicationController < ActionController::Base
  protect_from_forgery
  def shop_job()
	shop_job = Jobsite.find(:first, :conditions => ['jobno = "00-000"'])
	return shop_job
  end

  def shop_user()
	shop_user = User.find(:first, :conditions => ['name = "SHOP"'])
	return shop_user
  end
end
