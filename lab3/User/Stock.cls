Class User.Stock Extends (%Persistent, %Library.Populate)
{

Relationship Items As Item [ Cardinality = many, Inverse = Stock ];

Relationship Shop As Shop [ Cardinality = parent, Inverse = Stock ];

Storage Default
{
<Data name="StockDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("Stock")</DataLocation>
<DefaultData>StockDefaultData</DefaultData>
<ExtentSize>1</ExtentSize>
<IdLocation>^User.ShopC("Stock")</IdLocation>
<IndexLocation>^User.StockI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>4</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Shop">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="childsub">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^User.StockS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
