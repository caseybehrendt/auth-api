class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
    render :index
  end

  def show
    @department = Department.find_by(id: params[:id])
    render :show
  end

  def create
    department = Department.new(
      name: params["name"],
      manager: params["manager"],
      code: params["code"],
    )
    if department.save
      render json: department.as_json
    else
      render json: { errors: department.errors.full_messages }, status: 418
    end
  end

  def update
    department = Department.find_by(id: params[:id])
    department.name = params[:name] || department.name
    department.manager = params[:manager] || department.manager
    department.code = params[:code] || department.code

    if department.save
      render json: department.as_json
    else
      render json: { errors: department.errors.full_messages }, status: 418
    end
  end

  def destroy
    department = Department.find_by(id: params[:id])
    department.destroy
    render json: { message: "department removed succesfully" }
  end
end
