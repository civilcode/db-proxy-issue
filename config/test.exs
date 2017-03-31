use Mix.Config

config :db_proxy_bug, DbProxyBug.Repo,
  adapter: Ecto.Adapters.MySQL,
  hostname: "localhost",
  database: "db_proxy_bug",
  username: "root",
  password: "",
  pool: Ecto.Adapters.SQL.Sandbox
