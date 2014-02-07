module ApplicationHelper
	def flash_class(type)
		case type
		when :alert
			"alert-error"
		when :notice
			"alert-success"
		else
			""
		end
	end

	# Returns the full title on a per-page basis.
  	def full_title(page_title)
    	base_title = "toolLIST"
    	if page_title.empty?
     		base_title
    	else
      		"#{base_title} | #{page_title}"
   		end
	end

	def category_name(n)
		d = ""
		if n == 1
			d = "Step Ladders"
		elsif n == 2
			d = "Extension Ladders"
		elsif n == 3
			d = "Job Boxes"
		elsif n == 4
			d = "Hilti Drills"
		elsif n == 5
			d = "Drills"
		elsif n == 6
			d = "Miscellaneous"
		elsif n == 7
			d = "Heavy Machinery"
		else
			d = "unknown"
		end
		return d
	end

	def shop_user_id()
		shop_user = User.find(:first, :conditions => ['name = "SHOP"'])
		return shop_user.id
	end

	def shop_job_id()
		shop_job = Jobsite.find(:first, :conditions => ['jobno = "00-000"'])
		return shop_job.id
	end
end
