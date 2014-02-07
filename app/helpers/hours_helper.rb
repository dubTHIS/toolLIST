module HoursHelper
	def get_hours_date(id, day)
		user = User.find(id)
		hours = user.hours.find(:all, :conditions => ["date = ?", day])
    	return hours
    end

    def get_total_hours(id, date)
    	user = User.find(id)
    	first = date.beginning_of_week(:saturday)
    	last = date.end_of_week(:saturday)
    	week = (first..last).to_a
    	t = user.hours.find(:all, :conditions => ["date between ? and ?",
         first, last])
    	total = t.sum(&:total)
    	return total
    end
end
