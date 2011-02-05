class CupsController < ApplicationController
  # GET /cups
  # GET /cups.xml
  def index
    @cups = Cup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cups }
    end
  end

  # GET /cups/1
  # GET /cups/1.xml
  def show
    @cup = Cup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cup }
    end
  end

  # GET /cups/new
  # GET /cups/new.xml
  def new
    @cup = Cup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cup }
    end
  end

  # GET /cups/1/edit
  def edit
    @cup = Cup.find(params[:id])
  end

  # POST /cups
  # POST /cups.xml
  def create
    @cup = Cup.new(params[:cup])

    respond_to do |format|
      if @cup.save
        format.html { redirect_to(@cup, :notice => 'Cup was successfully created.') }
        format.xml  { render :xml => @cup, :status => :created, :location => @cup }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cups/1
  # PUT /cups/1.xml
  def update
    @cup = Cup.find(params[:id])

    respond_to do |format|
      if @cup.update_attributes(params[:cup])
        format.html { redirect_to(@cup, :notice => 'Cup was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cups/1
  # DELETE /cups/1.xml
  def destroy
    @cup = Cup.find(params[:id])
    @cup.destroy

    respond_to do |format|
      format.html { redirect_to(cups_url) }
      format.xml  { head :ok }
    end
  end
end
