defmodule HrWeb.UrlJSON do
  alias Hr.Urls.Url

  @doc """
  Renders a list of urls.
  """
  def index(%{employees: employees}) do
    %{data:
      for(employee <- employees) do
        %{
          Employee_ID: employee.employee_id,
          First_Name: employee.first_name,
          Last_Name: employee.last_name,
          Date_Hired: employee.hire_date,
          Department: employee.department
        }
      end
    }
  end

  @doc """
  Renders a single url.
  """
  def show(%{url: url}) do
    %{data: data(url)}
  end

  defp data(%Url{} = url) do
    %{
      id: url.id,
      link: url.link,
      title: url.title
    }
  end
end
