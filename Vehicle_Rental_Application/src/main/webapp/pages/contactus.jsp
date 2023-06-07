<!DOCTYPE html>
<html>
<head>
	<title>Contact Us</title>
	<style>
		body 
		{
			font-family: Arial, sans-serif;
			background-color: #f2f2f2;
		}
		h1 {
			text-align: center;
			margin-top: 50px;
		}
		form {
			max-width: 500px;
			margin: 50px auto;
			background-color: #ffffff;
			padding: 20px;
			border-radius: 10px;
			box-shadow: 0px 0px 10px #cccccc;
		}
		
		
	label 
	{
			display: block;
			margin-bottom: 10px;
			font-weight: bold;
		}
		input[type="text"], textarea 
		{
			width: 100%;
			padding: 10px;
			border: none;
			border-radius: 5px;
			background-color: #f9f9f9;
			margin-bottom: 20px;
			font-size: 16px;
		}
		input[type="submit"] {
			background-color: #4CAF50;
			color: #ffffff;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			font-size: 16px;
			cursor: pointer;
		}
		input[type="submit"]:hover 
		{
			background-color: #3e8e41;
		}
	</style>
</head>
<body>
	<h1>Contact Us</h1>
	<form method="post" action="#">
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" placeholder="Enter your name" required>

		<label for="email">Email:</label>
		<input type="text" id="email" name="email" placeholder="Enter your email" required>

		<label for="phone">Phone:</label>
		<input type="text" id="phone" name="phone" placeholder="Enter your phone number" required>

		<label for="message">Message:</label>
		<textarea id="message" name="message" placeholder="Enter your message" rows="5" required></textarea>

		<input type="submit" value="Submit">
	</form>
</body>
</html>