defmodule Hr.HRFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Hr.HR` context.
  """

  @doc """
  Generate a employee.
  """
  def employee_fixture(attrs \\ %{}) do
    {:ok, employee} =
      attrs
      |> Enum.into(%{
        department: "some department",
        employee_id: 42,
        first_name: "some first_name",
        hire_date: ~D[2023-04-30],
        last_name: "some last_name"
      })
      |> Hr.HR.create_employee()

    employee
  end
end
