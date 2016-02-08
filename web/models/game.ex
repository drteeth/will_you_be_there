defmodule WillYouBeThere.Game do
  use WillYouBeThere.Web, :model

  schema "games" do
    field :start_time, Ecto.DateTime
    field :field, :string
    belongs_to :home, WillYouBeThere.Team
    belongs_to :visitor, WillYouBeThere.Team

    timestamps
  end

  @required_fields ~w(start_time field)
  @optional_fields ~w()

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
