# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @current_time = Time.now.ctime
    @current_date = DateTime.now
  end

  def show; end
end
