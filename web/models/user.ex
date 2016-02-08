defmodule WillYouBeThere.User do
  use WillYouBeThere.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string

    timestamps
  end

  @required_fields ~w(name email)
  @optional_fields ~w()

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
