class Github
  attr_reader :response

  def initialize(username)
    @response = HTTParty.get("https://api.github.com/users/#{username}/repos")
  end

  def repositories
    list = []
    @response.map do |r|
      list << {name: r["name"], url: r["url"], language: r["language"], stargazers: r["stargazers_count"], forks: r["forks_count"], forked: r["fork"], updated_at: r["updated_at"]}
    end
    list
  end
end
