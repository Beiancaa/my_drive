class MessageMailer < ApplicationMailer
 default from: "beiancayousif89@gmail.com"
 default to: "beiancayousif89@gmail.com"
 
  def new_message(message)
    @message = message
    mail subject: "Message from #{message.name}"
  end

end

