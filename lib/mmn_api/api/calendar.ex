# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule MmnApi.Api.Calendar do
  @moduledoc """
  API calls for all endpoints tagged `Calendar`.
  """

  alias MmnApi.Connection
  import MmnApi.RequestBuilder


  @doc """
  Produce a calendar in ICS format, suitable to import to calendar clients like Outlook
  Keep the uniqueKey secret, it is used as an authentication for this call (user credentials are not needed).

  ## Parameters

  - connection (MmnApi.Connection): Connection to server
  - unique_key (String): uniqueKey A unique calendar identifier
  - opts (KeywordList): [optional] Optional parameters
    - :split_multiple_events (Boolean): true means broadcasts with multiple times will be represented by several events
    - :timezone (String): Enforce timezone of calendar events. By default, all events are published in the server timezone

  ## Returns

  {:ok, %MmnApi.Model.String{}} on success
  {:error, info} on failure
  """
  @spec get_scheduled_broadcasts(Tesla.Env.client, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def get_scheduled_broadcasts(connection, unique_key, opts \\ []) do
    optional_params = %{
      :"splitMultipleEvents" => :query,
      :"timezone" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{unique_key}/broadcasts.ics")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
