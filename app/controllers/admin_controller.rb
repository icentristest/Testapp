class AdminController < ApplicationController
  #before_filter :validate_user
  def adminlogin 
    @admin=Admin.new
  end

	def authnticate
	  admin=Admin.where(:username=>params[:username] , :password => params[:password])
	  if admin.size == 0
	  
	  render "adminlogin"
	  else 
	  render "homepage"    
	  end 
	end

	def employeelist
    
  end
  
  def validate_user
    
  end
  
	
	
end
