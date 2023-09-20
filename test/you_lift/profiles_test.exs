defmodule YouLift.ProfilesTest do
  use YouLift.DataCase

  alias YouLift.Profiles

  describe "profiles" do
    alias YouLift.Profiles.Profile

    import YouLift.ProfilesFixtures

    @invalid_attrs %{age: nil, biography: nil, fullname: nil, gender: nil, height: nil, picture: nil, username: nil, weight: nil}

    test "list_profiles/0 returns all profiles" do
      profile = profile_fixture()
      assert Profiles.list_profiles() == [profile]
    end

    test "get_profile!/1 returns the profile with given id" do
      profile = profile_fixture()
      assert Profiles.get_profile!(profile.id) == profile
    end

    test "create_profile/1 with valid data creates a profile" do
      valid_attrs = %{age: 42, biography: "some biography", fullname: "some fullname", gender: true, height: 120.5, picture: "some picture", username: "some username", weight: 120.5}

      assert {:ok, %Profile{} = profile} = Profiles.create_profile(valid_attrs)
      assert profile.age == 42
      assert profile.biography == "some biography"
      assert profile.fullname == "some fullname"
      assert profile.gender == true
      assert profile.height == 120.5
      assert profile.picture == "some picture"
      assert profile.username == "some username"
      assert profile.weight == 120.5
    end

    test "create_profile/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Profiles.create_profile(@invalid_attrs)
    end

    test "update_profile/2 with valid data updates the profile" do
      profile = profile_fixture()
      update_attrs = %{age: 43, biography: "some updated biography", fullname: "some updated fullname", gender: false, height: 456.7, picture: "some updated picture", username: "some updated username", weight: 456.7}

      assert {:ok, %Profile{} = profile} = Profiles.update_profile(profile, update_attrs)
      assert profile.age == 43
      assert profile.biography == "some updated biography"
      assert profile.fullname == "some updated fullname"
      assert profile.gender == false
      assert profile.height == 456.7
      assert profile.picture == "some updated picture"
      assert profile.username == "some updated username"
      assert profile.weight == 456.7
    end

    test "update_profile/2 with invalid data returns error changeset" do
      profile = profile_fixture()
      assert {:error, %Ecto.Changeset{}} = Profiles.update_profile(profile, @invalid_attrs)
      assert profile == Profiles.get_profile!(profile.id)
    end

    test "delete_profile/1 deletes the profile" do
      profile = profile_fixture()
      assert {:ok, %Profile{}} = Profiles.delete_profile(profile)
      assert_raise Ecto.NoResultsError, fn -> Profiles.get_profile!(profile.id) end
    end

    test "change_profile/1 returns a profile changeset" do
      profile = profile_fixture()
      assert %Ecto.Changeset{} = Profiles.change_profile(profile)
    end
  end
end
