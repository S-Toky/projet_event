class UserMailer < ApplicationMailer

	default from: 'no-reply@monsite.fr'

 
  def welcome_email(user)
   
    @user = user 
    @url  = 'http://monsite.fr/login' 
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end

  def attendance_email(attendance)
  	@attendance = attendance
  	@url  = 'http://monsite.fr/login' 
  	mail(to: @attendance.event.admin.email, subject: 'Bienvenue chez nous !')
  	
  end
end
