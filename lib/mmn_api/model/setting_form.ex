# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule MmnApi.Model.SettingForm do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"key",
    :"value"
  ]
end

defimpl Poison.Decoder, for: MmnApi.Model.SettingForm do
  def decode(value, _options) do
    value
  end
end
