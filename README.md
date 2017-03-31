# DbProxyIssue

Application with one GenServer doing calls to the database in synchronous mode.

See post on [ElixirForum](https://elixirforum.com/t/issue-with-dbconnection-ownership-proxy-checkout-and-genserver-process/4334).

## Installation

    mix deps.get
    MIX_ENV=test ecto.create # you may wish to update config/test.ex with your database config

## How to reproduce the issue

Run:

    while true; do mix test; done


Eventually, a `GenServer` error will occur. Example:

```
12:25:35.584 [error] GenServer DbProxyIssue.Worker terminating
** (stop) exited in: GenServer.call(#PID<0.197.0>, {:checkout, #Reference<0.0.2.1622>, true, 15000}, 5000)
    ** (EXIT) shutdown: "owner #PID<0.196.0> exited with: shutdown"
    (db_connection) lib/db_connection/ownership/proxy.ex:32: DBConnection.Ownership.Proxy.checkout/2
```

Work-arounds:

- Set the `pool_size` to `1` in `config/test.exs`
- Sleep 100ms before running the test (`:timer.sleep(100)` in `test/support/test_case.ex`)
