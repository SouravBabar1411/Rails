# Preview all emails at http://localhost:3000/rails/mailers/caption_mailer
class CaptionMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/caption_mailer/Caption_Created
  def Caption_Created
    CaptionMailer.with(player: Player.first, caption: Caption.first).Caption_Created
    end
end
