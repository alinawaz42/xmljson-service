module Api
  module V1
    class ServicesController < ApplicationController
      def convert
        render xml: JsonToXml.call(params[:json]) if params[:json]
        render json: XmlToJson.call(params[:xml]) if params[:xml]
      end
    end
  end
end
