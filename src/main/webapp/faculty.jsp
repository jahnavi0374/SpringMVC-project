<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JFSD</title>
</head>
<body>
	<div style="width:100%">
		<table style="width:100%">
			<tr>
				<td style="width:100px">Faculty ID*</td>
				<td><input type="text" id="T1" /></td>
			</tr>
			<tr>
				<td style="width:100px">Faculty Name*</td>
				<td><input type="text" id="T2" /></td>
			</tr>
			<tr>
				<td style="width:100px">Designation*</td>
				<td><input type="text" id="T3" /></td>
			</tr>
			<tr>
				<td style="width:100px"></td>
				<td> <button onclick="save()">Save</button> </td>
			</tr>
		</table>
	</div>
</body>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
	function save()
	{
		var T1 = document.getElementById("T1");
		var T2 = document.getElementById("T2");
		var T3 = document.getElementById("T3");
		
		var data = JSON.stringify({
			id : T1.value,
			name : T2.value,
			designation : T3.value
		});
		
		var url = "http://localhost:8080/faculty/save";
		callApi("POST", url, data, saveHandler);
	}
	function saveHandler(response)
	{
		alert(response.msg);
	}
</script>
</html>