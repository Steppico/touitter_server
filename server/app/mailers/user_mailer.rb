class UserMailer < ApplicationMailer
  default from: 'welcome@touitter.io'

  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: "Welcome to tOUItter")
  end
end