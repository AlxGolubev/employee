class EmployeeController < ApplicationController
  respond_to :json, :html
  def index
    @employees = Employee.all.page(params[:page])
    respond_to do |format|
      format.html {}
      format.json { render json: @employees }
    end
  end
end
