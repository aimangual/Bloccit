class SummariesController < ApplicationController
  def new
    @summary = Summary.new
  end

  def show
    @summary = Summary.find(params[:id])
  end
end