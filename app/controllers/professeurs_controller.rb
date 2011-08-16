class ProfesseursController < ApplicationController
  # GET /professeurs
  # GET /professeurs.xml
  def index
    @professeurs = Professeur.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @professeurs }
    end
  end

  # GET /professeurs/1
  # GET /professeurs/1.xml
  def show
    @professeur = Professeur.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @professeur }
    end
  end

  # GET /professeurs/new
  # GET /professeurs/new.xml
  def new
    @professeur = Professeur.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @professeur }
    end
  end

  # GET /professeurs/1/edit
  def edit
    @professeur = Professeur.find(params[:id])
  end

  # POST /professeurs
  # POST /professeurs.xml
  def create
    @professeur = Professeur.new(params[:professeur])

    respond_to do |format|
      if @professeur.save
        format.html { redirect_to(@professeur, :notice => 'Professeur was successfully created.') }
        format.xml  { render :xml => @professeur, :status => :created, :location => @professeur }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @professeur.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /professeurs/1
  # PUT /professeurs/1.xml
  def update
    @professeur = Professeur.find(params[:id])

    respond_to do |format|
      if @professeur.update_attributes(params[:professeur])
        format.html { redirect_to(@professeur, :notice => 'Professeur was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @professeur.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /professeurs/1
  # DELETE /professeurs/1.xml
  def destroy
    @professeur = Professeur.find(params[:id])
    @professeur.destroy

    respond_to do |format|
      format.html { redirect_to(professeurs_url) }
      format.xml  { head :ok }
    end
  end
end
