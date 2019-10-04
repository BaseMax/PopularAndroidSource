<html>
<head>
<script type="text/javascript">
function clean_body()
{
	var element = document.getElementById("MarketSaftyTip");
    if(element != null)
		element.innerHTML = "";
	
	element = document.getElementById("MST");
    if(element != null)
		element.innerHTML = "";
	
	element = document.getElementById("Title");
    if(element != null)
		element.innerHTML = "";
	
	element = document.getElementById("Header");
    if(element != null)
		element.innerHTML = "";
	
	//element = document.getElementById("EmailDetails");
//    if(element != null)
//		element.innerHTML = "";
//	
	element = document.getElementById("Footer");
    if(element != null)
		element.innerHTML = "";
	
	// this is where things get a bit brittle, we are looking to remove the "respond" button, which tends to 
	// lurk in the second <td> element in a table in the TextCTA <div> .  If eBay changes the html we will probably fail here, perhaps tragically
	// this code does lots of checking to avoid plowing ahead if the html structure isn't what we expect
	var textCTAElement = document.getElementById("TextCTA");
    if(textCTAElement != null)
	{
		cleanseTextCTA(textCTAElement);
	}
	
	// this is where things get a bit brittle, we are looking to remove the "review and respond" button, which tends to 
	// lurk in the second <td> element in a table in the SingleItemCTA <div> .  If eBay changes the html we will probably fail here, perhaps tragically
	// this code does lots of checking to avoid plowing ahead if the html structure isn't what we expect
	var singleItemCTAElement = document.getElementById("SingleItemCTA");
    if(singleItemCTAElement != null)
	{	
		//cleanseSingleItemCTA(singleItemCTAElement);
	}
}

function cleanseTextCTA(textCTAElement)
{
	removeSecondTdNode(textCTAElement);
}

function cleanseSingleItemCTA(singleItemCTAElement)
{
	removeSecondTdNode(singleItemCTAElement);
}

function removeSecondTdNode(element)
{
	var tableCollection = element.getElementsByTagName("table");
	if(tableCollection != null && tableCollection.length > 0)
	{
		var table = tableCollection[0];
		
		//alert("found table");
		var firstRow = table.getElementsByTagName("tr")[0];
		if(firstRow != null)
		{
			//alert("found tr");
			var tdChildren = firstRow.childNodes;
			
			//alert("child nodes of row length = " + tdChildren.length);
			//var cellCollection = table.getElementsByTagName("td");
			if(tdChildren != null && tdChildren.length > 1)
			{
				//alert("found tr child nodes");
				
				var secondTableCell = tdChildren[1];
				if(secondTableCell != null)
				{	
					//alert("found second td");
					secondTableCell.innerHTML = "";
				}
			}
		}
	}
}
</script>
</head>
<body onload="clean_body()">

