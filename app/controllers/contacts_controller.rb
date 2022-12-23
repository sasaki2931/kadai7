class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end
    
    def create
      @contact = Contact.new(contact_params)
      if @contact.save
          redirect_to shares_path, notice: 'お問い合わせ内容を送信しました'
      else
          render :new
      end
    end
    
    
    private
    
        # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:email,:name,:avatar)
    end
    
end
