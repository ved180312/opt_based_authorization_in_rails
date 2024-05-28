class PostMailer < ApplicationMailer
  def new_post_email(post)
    @post = post

    mail to: "ved@mail.com", subject: 'Just cheaking'
  end
end
