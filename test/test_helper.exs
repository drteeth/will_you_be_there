Application.ensure_all_started(:hound)
ExUnit.start

Mix.Task.run "ecto.create", ~w(-r WillYouBeThere.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r WillYouBeThere.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(WillYouBeThere.Repo)
