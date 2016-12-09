class EmployeeController < ApplicationController
  def index
    @employee = Unirest.get("http://localhost:3000/api/v1/employees").body
    render 'index.html.erb'
  end


  def show 
    @employee = Unirest.get("http://localhost:3000/api/v1/employees/#{params[:id]}").body
    render 'show.html.erb'
  end

end
