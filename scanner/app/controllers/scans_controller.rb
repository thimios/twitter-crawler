# frozen_string_literal: true

class ScansController < ApplicationController
  def index
    @scans = Scans::List.run!
  end

  # GET /accounts/new
  def new
    @scan = Scans::Create.to_model
  end

  # POST /scans
  def create
    outcome = Scans::Create.run(params.fetch(:scan, {}))

    if outcome.valid?
      redirect_to(outcome.result)
    else
      @scan = outcome
      render(:new)
    end
  end
end
