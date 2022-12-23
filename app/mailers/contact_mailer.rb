class ContactMailer < ApplicationMailer
    def contact_mail(share,user)
        @share = share
    
        mail to: @share.user.email, bcc: ENV["ACTION_MAILER_USER"], subject: "お問い合わせについて【自動送信】"
    end
end
