class EmailsController < ApplicationController
  def index
    ## Get all email objects
    @emails = Email.all.order("id DESC")
    
    ## Response to request
    respond_to do |format|
      format.html do 
        ## Action to do for HTML Request
      end
    
      format.js do
        ## Action to do for AJAX Request
      end
    end
  end

  def show
    ## Get email object by ID
    @email = Email.find(params[:id])
    
    ## Response to request
    respond_to do |format|
      format.html do 
        ## Action to do for HTML Request
      end
    
      format.js do
        ## Action to do for AJAX Request
      end
    end
  end

  def new
    ## Get new empty email Object
    @email = Email.new
    
    ## Response to request
    respond_to do |format|
      format.html do 
        ## Action to do for HTML Request
      end
    
      format.js do
        ## Action to do for AJAX Request
      end
    end
  end

  def create
    ## Create email object with given values
    @email = Email.create(from: Faker::Name.name, to: "MichMich", object: Faker::Lorem.sentence, body: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4))
    
    ## Response to request
    respond_to do |format|
      format.html do 
        ## Action to do for HTML Request
        redirect_to root_path
      end
    
      format.js do
        ## Action to do for AJAX Request
      end
    end
  end

  def edit
    ## Get email object by ID
    @email = Email.find(params[:id])

    ## Response to request
    respond_to do |format|
      format.html do 
        ## Action to do for HTML Request
      end
    
      format.js do
        ## Action to do for AJAX Request
      end
    end
  end

  def update
    ## Find and Update email object by ID
    @email = Email.find(params[:id])
    @email.update(helpers.email_params)

    ## Response to request
    respond_to do |format|
      format.html do 
        ## Action to do for HTML Request
        redirect_to root_path
      end
    
      format.js do
        ## Action to do for AJAX Request
      end
    end
  end

  def destroy
    ## Delete email object by ID
    @email = Email.find(params[:id])
    @email.destroy

    ## Response to request
    respond_to do |format|
      format.html do 
        ## Action to do for HTML Request
        redirect_to root_path
      end
    
      format.js do
        ## Action to do for AJAX Request
      end
    end
  end
end
