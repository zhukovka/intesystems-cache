Class User.Accessory Extends (%Persistent, User.Item, %Populate)
{

Property Dimensions As Dimensions;

Storage Default
{
<Data name="AccessoryDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Dimensions</Value>
</Value>
<Value name="3">
<Value>Price</Value>
</Value>
<Value name="4">
<Value>Name</Value>
</Value>
<Value name="5">
<Value>SKU</Value>
</Value>
<Value name="6">
<Value>Photo</Value>
</Value>
<Value name="7">
<Value>Stock</Value>
</Value>
</Data>
<DataLocation>^User.AccessoryD</DataLocation>
<DefaultData>AccessoryDefaultData</DefaultData>
<ExtentSize>5</ExtentSize>
<IdLocation>^User.AccessoryD</IdLocation>
<IndexLocation>^User.AccessoryI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Dimensions">
<AverageFieldSize>1,Height:1,Width:1</AverageFieldSize>
<Selectivity>100.0000%,Height:100.0000%,Width:100.0000%</Selectivity>
</Property>
<Property name="Name">
<AverageFieldSize>16.2</AverageFieldSize>
<Selectivity>33.3333%</Selectivity>
</Property>
<Property name="Photo">
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="Price">
<AverageFieldSize>7</AverageFieldSize>
<Selectivity>20.0000%</Selectivity>
</Property>
<Property name="SKU">
<AverageFieldSize>4</AverageFieldSize>
<Selectivity>20.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^User.AccessoryS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
