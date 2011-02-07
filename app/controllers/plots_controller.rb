class PlotsController < ApplicationController
  def user
    @cups_url = "cups.json?drank_by=#{params[:drank_by]}"
    respond_to do |format|
      format.html
    end
  end

  def collective
    @cups_url = "cups.json"
    respond_to do |format|
      format.html
    end
  end

end
