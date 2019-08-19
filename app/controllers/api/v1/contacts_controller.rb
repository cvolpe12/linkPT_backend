class Api::V1::ContactsController < ApplicationController
  before_action :find_contact, only: [:update]

  def index
    @contacts = Contact.all
    render json: @contacts
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: @contact, status: :accepted
    else
      render json: { errors: @contact.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @contact.update(contact_params)
    if @contact.save
      render json: @contact, status: :accepted
    else
      render json: { errors: @contact.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @contact = Contact.find(params[:id]).destroy

  end

  private

  def contact_params
    params.permit(:first_name, :last_name, :phone, :email, :photo)
  end

  def find_contact
    @contact = Contact.find(params[:id])
  end

end
