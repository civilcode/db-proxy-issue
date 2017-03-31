use Mix.Config

# MySQL

config :db_proxy_issue, DbProxyIssue.Repo,
  adapter: Ecto.Adapters.MySQL,
  hostname: "localhost",
  database: "db_proxy_issue_test",
  username: "root",
  password: "",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 2


# PostgreSQL
#
# config :db_proxy_issue, DbProxyIssue.Repo,
#   adapter: Ecto.Adapters.Postgres,
#   # username: "your-user-name",
#   # password: "your-password",
#   database: "db_proxy_issue_test",
#   pool: Ecto.Adapters.SQL.Sandbox,
#   pool_size: 2
