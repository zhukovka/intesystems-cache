Class User.Tests extends %UnitTest.TestCase {

ClassMethod Run() As %Status
{
	write "Running test", !
	Set ^UnitTestRoot="/Users/lenka/Downloads/cache/unittests"
	set className = ..%ClassName(1)
	set testcase = className
	set testsuite = className
	set testspec = testsuite _ ":" _ testcase
	set qualifiers = "/load=0/recursive=0"
	set status = ##class(%UnitTest.Manager).RunTest(testspec, qualifiers)
	quit status
}

Method TestAdd()
{
	set outlet = ##class(Order).%New()
	Do $$$AssertStatusOK(outlet.%Save(),"Saving an Order")
}

Method TestRequired(){
	set customer = ##class(Customer).%New()
	set customer.Name = "Vasia"
	Do $$$AssertStatusOK(customer.%Save(),"Saving a Customer")
}

Method TestValueList(){
	set dress = ##class(Garment).%New()
	set dress.SKU = "121"
	set size = ##class(Size).%New()
	set size.Size = "YO"
	set dress.Size = size
	Do $$$AssertStatusNotOK(dress.%Save(), "Valuelist test")
}

Method TestDeleteObj(){
	set dress = ##class(Garment).%New()
	set dress.SKU = "122"
	Do $$$AssertStatusOK(dress.%Save(),"Deleting a dress")
	Do $$$AssertStatusOK(##class(Garment).%DeleteId(dress.%Id()),"Deleting a dress")
}
}