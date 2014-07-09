class LeadsBsController < ApplicationController
  # GET /leads_bs
  # GET /leads_bs.json

def import
  LeadsB.import(params[:file])
  redirect_to map_show, notice: "Leads imported."
end

  def index
    @leads_bs = LeadsB.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leads_bs }
    end
  end

  # GET /leads_bs/1
  # GET /leads_bs/1.json
  def show
    @leads_b = LeadsB.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @leads_b }
    end
  end

  # GET /leads_bs/new
  # GET /leads_bs/new.json
  def new
    @leads_b = LeadsB.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @leads_b }
    end
  end

  # GET /leads_bs/1/edit
  def edit
    @leads_b = LeadsB.find(params[:id])
  end

  # POST /leads_bs
  # POST /leads_bs.json
  def create
    @leads_b = LeadsB.new(params[:leads_b])

    respond_to do |format|
      if @leads_b.save
        format.html { redirect_to @leads_b, notice: 'Leads b was successfully created.' }
        format.json { render json: @leads_b, status: :created, location: @leads_b }
      else
        format.html { render action: "new" }
        format.json { render json: @leads_b.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leads_bs/1
  # PUT /leads_bs/1.json
  def update
    @leads_b = LeadsB.find(params[:id])

    respond_to do |format|
      if @leads_b.update_attributes(params[:leads_b])
        format.html { redirect_to @leads_b, notice: 'Leads b was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @leads_b.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leads_bs/1
  # DELETE /leads_bs/1.json
  def destroy
    @leads_b = LeadsB.find(params[:id])
    @leads_b.destroy

    respond_to do |format|
      format.html { redirect_to leads_bs_url }
      format.json { head :no_content }
    end
  end
end
