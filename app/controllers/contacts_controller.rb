class ContactsController < ApplicationController

  before_filter :authorize, :except => [:new, :create, :confirmation]

  def index
  	@contacts = Contact.all( :order => "created_at DESC")
  end

  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(status_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to confirmation_contact_path(@contact), notice: 'Contact was successfully created.' }
        format.json { render action: 'confirmation', status: :created, location: @contact }
        
      else
        format.html { render action: 'new' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @contact=Contact.find(params[:id])
  end

  def confirmation
    @contact=Contact.find(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_params
      params.require(:contact).permit(:name, :email, :phone, :additional_information)
    end

    def authorize
      redirect_to blogs_path unless current_user.try(:admin?)
    end
end
