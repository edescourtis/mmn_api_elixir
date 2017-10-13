# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule MmnApi.Model.RecipientInfo do
  @moduledoc """
  System provided information about the recipient. Read-only.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"title",
    :"type",
    :"group",
    :"oneTimeRecipient"
  ]
end

defimpl Poison.Decoder, for: MmnApi.Model.RecipientInfo do
  def decode(value, _options) do
    value
  end
end

