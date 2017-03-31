defmodule DbProxyIssue.Worker do
  use GenServer

  alias DbProxyIssue.Weather

  def start_link(opts \\ [name: __MODULE__]) do
    GenServer.start_link(__MODULE__, nil, opts)
  end

  def fetch_weather do
    GenServer.call(__MODULE__, :fetch_weather)
  end

  # Callbacks

  def handle_call(:fetch_weather, _from, state) do
    records = Weather.all

    {:reply, "REPLY", state}
  end
end
