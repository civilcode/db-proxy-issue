defmodule DbProxyIssue.Worker do
  use GenServer

  alias DbProxyIssue.Weather

  def start_link(opts \\ [name: __MODULE__]) do
    GenServer.start_link(__MODULE__, nil, opts)
  end

  def weather_count do
    GenServer.call(__MODULE__, :weather_count)
  end

  def record_weather(city, temp_lo, temp_hi) do
    GenServer.call(__MODULE__, {:record_weather, city, temp_lo, temp_hi})
  end

  # Callbacks

  def handle_call({:record_weather, city, temp_lo, temp_hi}, _from, state) do
    result = Weather.record_weather(city, temp_lo, temp_hi)

    {:reply, result, state}
  end

  def handle_call(:weather_count, _from, state) do
    records = Weather.all

    {:reply, length(records), state}
  end
end
