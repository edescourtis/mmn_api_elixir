# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule MmnApi.Model.ContactMethod do
  @moduledoc """
  a contact method object
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"data",
    :"type"
  ]
end

defimpl Poison.Decoder, for: MmnApi.Model.ContactMethod do
  def decode(value, _options) do
    value
  end
end
