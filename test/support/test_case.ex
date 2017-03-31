defmodule DbProxyBug.TestCase do
  @moduledoc false

  use ExUnit.CaseTemplate

  using do
    quote do
      alias DbProxyBug.Repo

      import Ecto
      import Ecto.{Changeset, Query}
      import DbProxyBug.TestCase
    end
  end

  setup _tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(DbProxyBug.Repo)

    # Alway share the connection we just checked out with all other processes
    # MySQL does not support concurrent tests
    Ecto.Adapters.SQL.Sandbox.mode(DbProxyBug.Repo, {:shared, self()})

    :ok
  end
end
