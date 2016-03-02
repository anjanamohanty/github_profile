class Github
  attr_reader :response

  def initialize(username)
    @response = HTTParty.get("https://api.github.com/users/#{username}/repos")
  end

  def repositories
    list = []
    @response.map do |r|
      list << {name: r["name"], url: r["url"], language: r["language"], stargazers: r["stargazers_count"], forks: r["forks_count"], forked: r["fork"]}
    end
    list
  end
end

#
#
# {
#   "id": 51312982,
#   "name": "battleship",
#   "full_name": "anjanamohanty/battleship",
#   "owner": {
#     "login": "anjanamohanty",
#     "id": 1380205,
#     "avatar_url": "https://avatars.githubusercontent.com/u/1380205?v=3",
#     "gravatar_id": "",
#     "url": "https://api.github.com/users/anjanamohanty",
#     "html_url": "https://github.com/anjanamohanty",
#     "followers_url": "https://api.github.com/users/anjanamohanty/followers",
#     "following_url": "https://api.github.com/users/anjanamohanty/following{/other_user}",
#     "gists_url": "https://api.github.com/users/anjanamohanty/gists{/gist_id}",
#     "starred_url": "https://api.github.com/users/anjanamohanty/starred{/owner}{/repo}",
#     "subscriptions_url": "https://api.github.com/users/anjanamohanty/subscriptions",
#     "organizations_url": "https://api.github.com/users/anjanamohanty/orgs",
#     "repos_url": "https://api.github.com/users/anjanamohanty/repos",
#     "events_url": "https://api.github.com/users/anjanamohanty/events{/privacy}",
#     "received_events_url": "https://api.github.com/users/anjanamohanty/received_events",
#     "type": "User",
#     "site_admin": false
#   },
#   "private": false,
#   "html_url": "https://github.com/anjanamohanty/battleship",
#   "description": "",
#   "fork": true,
#   "url": "https://api.github.com/repos/anjanamohanty/battleship",
#   "forks_url": "https://api.github.com/repos/anjanamohanty/battleship/forks",
#   "keys_url": "https://api.github.com/repos/anjanamohanty/battleship/keys{/key_id}",
#   "collaborators_url": "https://api.github.com/repos/anjanamohanty/battleship/collaborators{/collaborator}",
#   "teams_url": "https://api.github.com/repos/anjanamohanty/battleship/teams",
#   "hooks_url": "https://api.github.com/repos/anjanamohanty/battleship/hooks",
#   "issue_events_url": "https://api.github.com/repos/anjanamohanty/battleship/issues/events{/number}",
#   "events_url": "https://api.github.com/repos/anjanamohanty/battleship/events",
#   "assignees_url": "https://api.github.com/repos/anjanamohanty/battleship/assignees{/user}",
#   "branches_url": "https://api.github.com/repos/anjanamohanty/battleship/branches{/branch}",
#   "tags_url": "https://api.github.com/repos/anjanamohanty/battleship/tags",
#   "blobs_url": "https://api.github.com/repos/anjanamohanty/battleship/git/blobs{/sha}",
#   "git_tags_url": "https://api.github.com/repos/anjanamohanty/battleship/git/tags{/sha}",
#   "git_refs_url": "https://api.github.com/repos/anjanamohanty/battleship/git/refs{/sha}",
#   "trees_url": "https://api.github.com/repos/anjanamohanty/battleship/git/trees{/sha}",
#   "statuses_url": "https://api.github.com/repos/anjanamohanty/battleship/statuses/{sha}",
#   "languages_url": "https://api.github.com/repos/anjanamohanty/battleship/languages",
#   "stargazers_url": "https://api.github.com/repos/anjanamohanty/battleship/stargazers",
#   "contributors_url": "https://api.github.com/repos/anjanamohanty/battleship/contributors",
#   "subscribers_url": "https://api.github.com/repos/anjanamohanty/battleship/subscribers",
#   "subscription_url": "https://api.github.com/repos/anjanamohanty/battleship/subscription",
#   "commits_url": "https://api.github.com/repos/anjanamohanty/battleship/commits{/sha}",
#   "git_commits_url": "https://api.github.com/repos/anjanamohanty/battleship/git/commits{/sha}",
#   "comments_url": "https://api.github.com/repos/anjanamohanty/battleship/comments{/number}",
#   "issue_comment_url": "https://api.github.com/repos/anjanamohanty/battleship/issues/comments{/number}",
#   "contents_url": "https://api.github.com/repos/anjanamohanty/battleship/contents/{+path}",
#   "compare_url": "https://api.github.com/repos/anjanamohanty/battleship/compare/{base}...{head}",
#   "merges_url": "https://api.github.com/repos/anjanamohanty/battleship/merges",
#   "archive_url": "https://api.github.com/repos/anjanamohanty/battleship/{archive_format}{/ref}",
#   "downloads_url": "https://api.github.com/repos/anjanamohanty/battleship/downloads",
#   "issues_url": "https://api.github.com/repos/anjanamohanty/battleship/issues{/number}",
#   "pulls_url": "https://api.github.com/repos/anjanamohanty/battleship/pulls{/number}",
#   "milestones_url": "https://api.github.com/repos/anjanamohanty/battleship/milestones{/number}",
#   "notifications_url": "https://api.github.com/repos/anjanamohanty/battleship/notifications{?since,all,participating}",
#   "labels_url": "https://api.github.com/repos/anjanamohanty/battleship/labels{/name}",
#   "releases_url": "https://api.github.com/repos/anjanamohanty/battleship/releases{/id}",
#   "deployments_url": "https://api.github.com/repos/anjanamohanty/battleship/deployments",
#   "created_at": "2016-02-08T17:17:59Z",
#   "updated_at": "2016-02-08T17:18:00Z",
#   "pushed_at": "2016-02-08T13:43:03Z",
#   "git_url": "git://github.com/anjanamohanty/battleship.git",
#   "ssh_url": "git@github.com:anjanamohanty/battleship.git",
#   "clone_url": "https://github.com/anjanamohanty/battleship.git",
#   "svn_url": "https://github.com/anjanamohanty/battleship",
#   "homepage": null,
#   "size": 7,
#   "stargazers_count": 0,
#   "watchers_count": 0,
#   "language": "Ruby",
#   "has_issues": false,
#   "has_downloads": true,
#   "has_wiki": true,
#   "has_pages": false,
#   "forks_count": 0,
#   "mirror_url": null,
#   "open_issues_count": 0,
#   "forks": 0,
#   "open_issues": 0,
#   "watchers": 0,
#   "default_branch": "master"
# }
