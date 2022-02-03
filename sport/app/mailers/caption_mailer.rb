class CaptionMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.caption_mailer.Caption_Created.subject
  #
  def Caption_Created
    @player = params[:player]
    @caption = params[:caption]
    @greeting = "Hi"
    attachments['bridge.jpg'] = File.read('app/assets/images/bridge.jpg')
   
    #mail to: "abc@example.com" , cc: Player.all.pluck(:email), bcc: "abcd@example.com", subject: "New Caption.."
    mail(
      from: "caption@gmail.com",
      to: "abc@example.com",
      cc: Player.all.pluck(:email), 
      bcc: "secret@example.com", 
      subject: "New Caption ..."
    )   
  end
end
