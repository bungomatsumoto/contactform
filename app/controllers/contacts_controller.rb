class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    # インスタンス変数設定しないと、バリデーション失敗＝render:new→「new」画面で、「@contactがなくてエラー」と出てしまう
    if @contact.save
      redirect_to new_contact_path
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
