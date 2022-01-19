class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token # this is unsafe but enough for a demo !

end
