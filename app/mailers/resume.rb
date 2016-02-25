
class Resume < ApplicationMailer
  default from: 'notifications@example.com'
  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
   def news_letter(user)
    @products = user.products.all.map{ |x| [x.id , x.total_likes]}.sort{|x,y|y[1]<=> x[1]}.map{|x| x[0]}.uniq!.take(10)
    @user = user
    @url  = 'http://localhost:3000/login'
    mail(to: @user.email, subject: 'Great stufs this month!!')
   end
end
