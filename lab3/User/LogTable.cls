Class User.LogTable extends %Persistent {
	Property TableName As %String;
	Property Value As %String;
Storage Default
{
<Data name="LogTableDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TableName</Value>
</Value>
<Value name="3">
<Value>Value</Value>
</Value>
</Data>
<DataLocation>^User.LogTableD</DataLocation>
<DefaultData>LogTableDefaultData</DefaultData>
<IdLocation>^User.LogTableD</IdLocation>
<IndexLocation>^User.LogTableI</IndexLocation>
<StreamLocation>^User.LogTableS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}