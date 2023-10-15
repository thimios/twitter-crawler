# frozen_string_literal: true

class ScansController < ApplicationController
  def index
    @scans = ListScans.run!
  end

  # GET /accounts/new
  def new
    @account = CreateScan.new
  end

  # POST /scans
  def create
    outcome = CreateScan.run(params.fetch(:scan, {}))

    if outcome.valid?
      redirect_to(outcome.result)
    else
      @scan = outcome
      render(:new)
    end
  end
end
