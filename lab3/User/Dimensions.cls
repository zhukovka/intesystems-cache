Class User.Dimensions extends %SerialObject {
Property Width As %Numeric(MINVAL=0);
Property Height As %Numeric(MINVAL=0);
Storage Default
{
<Data name="DimensionsState">
<Value name="1">
<Value>Width</Value>
</Value>
<Value name="2">
<Value>Height</Value>
</Value>
</Data>
<State>DimensionsState</State>
<StreamLocation>^User.DimensionsS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}