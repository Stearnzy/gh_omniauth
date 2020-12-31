class DashboardFacade
  def self.public_repos(current_user)
    publics = UserRepoService.fetch_public_repos(current_user)
    publics.map do |repo|
      RepoObject.new(repo)
    end
  end

  def self.private_repos(current_user)
    privates = UserRepoService.fetch_private_repos(current_user)
    privates.map do |repo|
      RepoObject.new(repo)
    end
  end
end
