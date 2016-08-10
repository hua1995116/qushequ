<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	main_login
	<form method="post" action="user-main_login">
		<input type="text" name="phoneNumber" value=""> <input type="text"
			name="password" value=""> <input type="submit" value="submit" >
	</form>
	sever_login
	<form method="post" action="user-sever_login">
		<input type="text" name="phoneNumber" value=""> <input type="text"
			name="password" value=""> <input type="submit" value="submit">
	</form>
	user_login
	<form method="post" action="user-member_login">
		<input type="text" name="phoneNumber" value=""> <input type="text"
			name="password" value=""> <input type="submit" value="submit">
	</form>
	write_login(说说)
	<form method="post" action="user-write_login?type=说说">
		<input type="text" name="phoneNumber" value=""> <input type="text"
			name="password" value=""> <input type="submit" value="submit">
	</form>
	write_login(求助)
	<form method="post" action="user-write_login?type=求助">
		<input type="text" name="phoneNumber"> <input type="text"
			name="password"> <input type="submit" value="submit">
	</form>
	write_login(租房)
	<form method="post" action="user-write_login?type=租房">
		<input type="text" name="phoneNumber"> <input type="text"
			name="password"> <input type="submit" value="submit">
	</form>
	write_login(需求(需))
	<form method="post" action="user-write_login?type=需求(需)">
		<input type="text" name="phoneNumber"> <input type="text"
			name="password"> <input type="submit" value="submit">
	</form>
	write_login(需求(求))
	<form method="post" action="user-write_login?type=需求(求)">
		<input type="text" name="phoneNumber"> <input type="text"
			name="password"> <input type="submit" value="submit">
	</form>
	write_login(美食)
	<form method="post" action="user-write_login?type=美食">
		<input type="text" name="phoneNumber"> <input type="text"
			name="password"> <input type="submit" value="submit">
	</form>
	yb_login(约吧)
	<form method="post" action="user-yb_login">
		<input type="text" name="phoneNumber"> <input type="text"
			name="password"> <input type="submit" value="submit">
	</form>
	yb_join(约吧)
	<form method="post" action="yb-getAllYbNotBegin">
		<input type="text" name="phoneNumber"> <input type="text"
			name="password"> <input type="submit" value="submit">
	</form>

</body>
</html>