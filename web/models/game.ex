defmodule WillYouBeThere.Game do
  use WillYouBeThere.Web, :model

  schema "games" do
    field :start_time, Ecto.DateTime
    field :field, :string
    belongs_to :team_a, WillYouBeThere.Teaw
    belongs_to :team_b, WillYouBeThere.Team

    timestamps
  end

  @required_fields ~w(start_time field team_a team_b)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
