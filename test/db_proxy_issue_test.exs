defmodule DbProxyIssueTest do
  use DbProxyIssue.TestCase
  doctest DbProxyIssue

  test "worker fetches weather" do
    assert DbProxyIssue.Worker.fetch_weather() == "REPLY"
  end

  test "worker fetches weather again" do
    assert DbProxyIssue.Worker.fetch_weather() == "REPLY"
  end
end
