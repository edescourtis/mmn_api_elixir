# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule MmnApi.Model.Recipient do
  @moduledoc """
  Recipient of a broadcast    There are two general categories of recipients:    1. A recipient that represents an endpoint persisted in MMN database: the &#x60;id&#x60; field is set to endpoint.id. The endpoint could be a group or an individual.    2. A one-time or ad-hoc recipient: the &#x60;id&#x60; field is not defined. Recipient is defined by contact data presented in JSON objects.    Recipient parameters can be set as JSON objects in &#x60;params&#x60;. Object is a &#x60;key:value&#x60; pair, where &#x60;value&#x60; must be a string.    For one time recipients, following objects are interpreted as contact details:    * first name and last name, if present: &#x60;\&quot;FIRST_NAME\&quot;:\&quot;John\&quot;, \&quot;LAST_NAME\&quot;:\&quot;Smith\&quot;&#x60;    * one or more contact data objects: &#x60;\&quot;CONTACT_DATA\&quot;:\&quot;555-555-1234\&quot;, \&quot;CONTACT_DATA_2\&quot;:\&quot;me@company.com\&quot;&#x60;    * If neither &#x60;id&#x60; nor any variant of \&quot;contact data\&quot; fields is present, but there is a parameter &#x60;UID&#x60;, then a persisted Contact with &#x60;UniqueId&#x60; matching UID (case insensitive) is used as a recipient. UniqueId is typically shared across several systems in the organization, hence allows addressing persisted Contacts without dependency on internal MMN identifiers.  * If none of the methods to define or identify a recipient are successful, then this recipient will be ignored.    Note that parameter keys are case insensitive, and underscore is equivalent with space. Thus &#x60;\&quot;contact Data 5\&quot; is the same as \&quot;CONTACT_DATA_5\&quot;&#x60;.    Field &#x60;\&quot;info\&quot;&#x60; provides metadata about the recipient. This information is useful especially for persisted endpoints.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"params",
    :"info"
  ]
end

defimpl Poison.Decoder, for: MmnApi.Model.Recipient do
  import MmnApi.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"info", :struct, MmnApi.Model.RecipientInfo, options)
  end
end

