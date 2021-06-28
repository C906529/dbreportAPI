module V1
  class TestrunsController < ApplicationController


    def index
      runs = Run.all
      render json:{status => 'SUCCESS', message: 'logs loaded', data: runs}, status: :ok
    end

    def show
      run = Run.where("_id": params[:id])
      render json:{status => 'SUCCESS', message: 'logs loaded', data: run}, status: :ok

    end

    def create
      run  = Run.new(featurelog_params)
      if feature.save
        render json:{status => 'SUCCESS', message: 'logs saved', data: run}, status: :ok
      else
        render json:{status => 'ERROR', message: 'logs not saved', data: run.errors}, status: :unprocessable_entity
      end

    end


    private

    def featurelog_params
      params.permit(:uri, :id, :keyword, :name, :description,)
    end


  end
end