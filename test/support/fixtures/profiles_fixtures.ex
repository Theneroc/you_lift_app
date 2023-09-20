defmodule YouLift.ProfilesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `YouLift.Profiles` context.
  """

  @doc """
  Generate a profile.
  """
  def profile_fixture(attrs \\ %{}) do
    {:ok, profile} =
      attrs
      |> Enum.into(%{
        age: 42,
        biography: "some biography",
        fullname: "some fullname",
        gender: true,
        height: 120.5,
        picture: "some picture",
        username: "some username",
        weight: 120.5
      })
      |> YouLift.Profiles.create_profile()

    profile
  end
end
