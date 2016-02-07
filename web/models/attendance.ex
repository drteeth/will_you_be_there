defmodule WillYouBeThere.Attendance do
  use WillYouBeThere.Web, :model

  schema "attendance" do
    field :status, :string
    belongs_to :game, WillYouBeThere.Game
    belongs_to :member, WillYouBeThere.Member

    timestamps
  end

  @required_fields ~w(status)
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
