class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render :json => @contacts
  end

  def show
    @contact = Contact.find(params[:id])
    render :json => @contact
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      render :json => @contact
    else
      render :json => @contact.errors, :status => :unprocessable_entity
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    if @contact.destroy
      head :ok
    else
      render :json => @contact.errors
    end
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])
      render :json => @contact
    else
      render :json => @contact.errors, :status => :unprocessable_entity
    end
  end

end
