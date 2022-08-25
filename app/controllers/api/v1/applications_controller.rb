class Api::V1::ApplicationsController < ApplicationController
	skip_before_action :verify_authenticity_token
	#Controller actions are protected from Cross-Site Request Forgery (CSRF) attacks by including a token in the rendered HTML for your application.
end
