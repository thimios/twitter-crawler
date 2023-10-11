# frozen_string_literal: true

class ScansController < ApplicationController
  def index
    @scans = Scan.all
  end
end
