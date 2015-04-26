class WelcomeController < ApplicationController

  def index
    respond_to do |format|
      format.html
      format.pdf do
        render :formats => [:html]
      end
    end
  end
end
