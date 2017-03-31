use Mix.Config

config :db_proxy_issue, DbProxyIssue.Repo,
  adapter: Ecto.Adapters.MySQL,
  hostname: "localhost",
  database: "db_proxy_issue_test",
  username: "root",
  password: "",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 2
