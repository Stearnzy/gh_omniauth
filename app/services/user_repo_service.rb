class UserRepoService
  def self.conn
    Faraday.new(url: 'https://api.github.com', headers: { 'Authorization': "token #{current_user.token}" })
  end

  def fetch_public_repos
    response = conn.get("/user/repos?per_page=100&type=public")
    parse_data(response)
  end

  def fetch_private_repos
    response = conn.get("/user/repos?per_page=100&type=private")
    parse_data(response)
  end

  def parse_data(response)
    data = JSON.parse(response.body, symbolize_names: true)
  end
end