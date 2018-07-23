module Api
  module V1
    class ServicesController < ApplicationController
      def convert
        render xml: JsonToXml.call(params[:json]) if params[:json]
      end
    end
  end
end
