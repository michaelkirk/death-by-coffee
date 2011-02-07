class CupsController < ApplicationController
  # GET /cups
  # GET /cups.json
  def index
    @cups = Cup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json  { render :json => @cups }
    end
  end

  # GET /cups/1
  # GET /cups/1.json
  def show
    @cup = Cup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json  { render :json => @cup }
    end
  end

  # GET /cups/new
  # GET /cups/new.json
  def new
    @cup = Cup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json  { render :json => @cup }
    end
  end

  # GET /cups/1/edit
  def edit
    @cup = Cup.find(params[:id])
  end

  # POST /cups
  # POST /cups.json
  def create
    @cup = Cup.new(params[:cup])

    respond_to do |format|
      if @cup.save
        format.html { redirect_to('/plots/collective', :notice => 'Cup was successfully created.') }
        format.json  { render :json => @cup, :status => :created, :location => @cup }
      else
        format.html { render :action => "new" }
        format.json  { render :json => @cup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cups/1
  # PUT /cups/1.json
  def update
    @cup = Cup.find(params[:id])

    respond_to do |format|
      if @cup.update_attributes(params[:cup])
        format.html { redirect_to(@cup, :notice => 'Cup was successfully updated.') }
        format.json  { head :ok }
      else
        format.html { render :action => "edit" }
        format.json  { render :json => @cup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cups/1
  # DELETE /cups/1.json
  def destroy
    @cup = Cup.find(params[:id])
    @cup.destroy

    respond_to do |format|
      format.html { redirect_to(cups_url) }
      format.json  { head :ok }
    end
  end
end
