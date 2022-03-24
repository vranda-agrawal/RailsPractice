class UserMailer < ApplicationMailer
  default from: email_address_with_name('vrandaagrawal410@gmail.com','Vranda Agrawal')
  layout 'user'

  def user_mail(user)
    attachments.inline['photo.jpeg'] = File.read('app/assets/images/photo.jpeg')
    @user=user
    puts @user
    mail(to: email_address_with_name(@user.email, @user.name),subject: 'Welcome to this website') do |format|
      format.html { render layout: 'update' }
      format.text
    end
  end

  def update_user_mail(user)
    @user=user
    puts @user
    mail(to: email_address_with_name(@user.email, @user.name),
        subject: 'Successfully Updated',
        template_path: 'user',
        template_name: 'update')
  end
  
end
