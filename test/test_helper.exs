ExUnit.start()

# Comment out following line to enable automatic mode (for Postgresql)
Ecto.Adapters.SQL.Sandbox.mode(DbProxyIssue.Repo, :manual)
