defmodule YouLift.Repo.Migrations.CreateProfiles do
  use Ecto.Migration

  def change do
    create table(:profiles, primary_key: false) do
      add(:id, :binary_id, primary_key: true)
      add(:fullname, :string)
      add(:username, :string)
      add(:age, :integer)
      add(:gender, :boolean, default: false, null: false)
      add(:weight, :float)
      add(:height, :float)
      add(:picture, :string)
      add(:biography, :text)
      add(:user_id, references(:users, on_delete: :delete_all, type: :binary_id))

      timestamps()
    end

    create(index(:profiles, [:user_id]))
  end
end
