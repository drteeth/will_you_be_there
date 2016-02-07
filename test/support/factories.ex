defmodule WillYouBeThere.Factory do
  use ExMachina.Ecto, repo: WillYouBeThere.Repo

  def attributes_for(model) do
    build(model)
    |> Map.delete(:__struct__)
    |> Map.delete(:__meta__)
    |> Map.delete(:inserted_at)
    |> Map.delete(:updated_at)
  end

end
