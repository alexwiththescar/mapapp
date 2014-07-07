class LeadsAsController < ApplicationController
  # GET /leads_as
  # GET /leads_as.json

def import
  LeadsA.import(params[:file])
  redirect_to map_show, notice: "Leads imported."
end



  def index
    @leads_as = LeadsA.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leads_as }
    end
  end

  # GET /leads_as/1
  # GET /leads_as/1.json
  def show
    @leads_a = LeadsA.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @leads_a }
    end
  end

  # GET /leads_as/new
  # GET /leads_as/new.json
  def new
    @leads_a = LeadsA.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @leads_a }
    end
  end

  # GET /leads_as/1/edit
  def edit
    @leads_a = LeadsA.find(params[:id])
  end

  # POST /leads_as
  # POST /leads_as.json
  def create
    @leads_a = LeadsA.new(params[:leads_a])

    respond_to do |format|
      if @leads_a.save
        format.html { redirect_to @leads_a, notice: 'Leads a was successfully created.' }
        format.json { render json: @leads_a, status: :created, location: @leads_a }
      else
        format.html { render action: "new" }
        format.json { render json: @leads_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leads_as/1
  # PUT /leads_as/1.json
  def update
    @leads_a = LeadsA.find(params[:id])

    respond_to do |format|
      if @leads_a.update_attributes(params[:leads_a])
        format.html { redirect_to @leads_a, notice: 'Leads a was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @leads_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leads_as/1
  # DELETE /leads_as/1.json
  def destroy
    @leads_a = LeadsA.find(params[:id])
    @leads_a.destroy

    respond_to do |format|
      format.html { redirect_to leads_as_url }
      format.json { head :no_content }
    end
  end
end
