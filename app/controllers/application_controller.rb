class ApplicationController < ActionController::Base
  before_action do
    if Rails.env.development? || params[:rmp].present?
      Rack::MiniProfiler.authorize_request
    end
  end
end
