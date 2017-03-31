use Mix.Config

config :db_proxy_issue, DbProxyIssue.Repo,
  adapter: Ecto.Adapters.MySQL,
  hostname: "localhost",
  database: "db_proxy_issue",
  username: "root",
  password: "",
  pool_size: 20
