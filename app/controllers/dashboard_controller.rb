class DashboardController < ApplicationController
  def index
    @public_repos = DashboardFacade.public_repos(current_user)
    @private_repos = DashboardFacade.private_repos(current_user)
  end
end