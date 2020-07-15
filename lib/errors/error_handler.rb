module Errors
  module ErrorHandler
    extend ActiveSupport::Concern

      included do
        rescue_from ActiveRecord::RecordInvalid do |e|
          status = 422
          json = Invalid.new(status, :record_invalid, e.to_s, self.request.fullpath).to_json
          respond(json, status)
        end
      end

    private

    def respond(json, status)
      render json: json, status: status
    end
  end
end
