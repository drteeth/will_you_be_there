ExUnit.start

Mix.Task.run "ecto.create", ~w(-r WillYouBeThere2.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r WillYouBeThere2.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(WillYouBeThere2.Repo)

