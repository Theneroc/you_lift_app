defmodule YouLiftWeb.AboutLive do
  use YouLiftWeb, :live_view

  # alias YouLift.Accounts
  # alias YouLift.Accounts.User

  def render(assigns) do
    ~H"""
    UNDER CONSTRUCTION
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_event("save", %{"user" => user_params}, socket) do

  end

  def handle_event("validate", %{"user" => user_params}, socket) do

  end

  defp assign_form(socket, %Ecto.Changeset{} = changeset) do

  end
end
