module V1
  class FeatureController < ApplicationController
    def index
      #features = Featurelog.order('created_at DESC')
      render json:{status => 'SUCCESS', message: 'logs loaded'}, status: :ok
    end
  end
end