<%@ page language="java" contentType="text/html; charset=windows-1255" pageEncoding="windows-1255"%>
<%@ page import="com.oa.couponsWebApp.DAO , com.oa.couponsWebApp.Coupon" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1255">
<title>Update Coupon</title>
</head>
<body>
        <h2>Update coupon</h2>
        <%
        		Object ob = request.getAttribute("coupon");
       			System.out.println("Coupon to be updated=:"+ ob);
               
         %>
         		<form action="../controller/updateCoupon" method="get">
         		<input type="hidden" name="couponId" value=<% out.print(((Coupon)ob).getId()); %>>
				Image: <input type=text name="image" value="<% out.print(((Coupon)ob).getImage()); %>"><br>
				Business id: <input type=text name="businessId" value="<% out.print(((Coupon)ob).getBusinessId()); %>"><br>
				Description: <textarea name="description"><% out.print(((Coupon)ob).getDescription()); %></textarea> <br>
				Expire date: <input type="date" name="expDate" value="<% out.print(((Coupon)ob).getExpireDate()); %>">
				<input type=submit value="Udpate">
				</form>

</body>
</html>