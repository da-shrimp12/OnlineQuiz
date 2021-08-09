
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="header"></div>
            <jsp:include page="Menu.jsp"/>
            <div class="main main_makeQuiz">
				<table class="detail_quiz">
					<form action="edit-quiz?qid=${detail.id}" method="post">
						
						<tr>
							<td>Question:</td>
							<td><textarea name="question" class="question">${detail.question}</textarea></td>
						</tr>
						<tr>
							<td>Option 1: </td>
							<td><textarea name="option1">${detail.option1}</textarea></td>
						</tr>
						<tr>
							<td>Option 2: </td>
							<td><textarea name="option2">${detail.option2}</textarea></td>
						</tr>
						<tr>
							<td>Option 3: </td>
							<td><textarea name="option3">${detail.option3}</textarea></td>
						</tr>
						<tr>
							<td>Option 4: </td>
							<td><textarea name="option4">${detail.option4} </textarea></td>
						</tr>
						<tr>
							<td>Answer(s): </td> 
							<td><input type="text" value="Option(s): ${detail.answer}" readonly required></td>
						</tr>
						<tr>
							<td>Update Answers(s):  </td><br>
						<td>
							<input type="checkbox" value="1" name="answer"> Option 1                  
							<input type="checkbox" value="2" name="answer"> Option 2
							<input type="checkbox" value="3" name="answer"> Option 3
							<input type="checkbox" value="4" name="answer"> Option 4
						</td>
						</tr>
						<tr>
							<td></td>
							<td>							
								<a href="delete-quiz?qid=${detail.id}">Delete</a>
								<button type="submit" >Update</button>
							</td>
						</tr>
					</form>
				</table>
            </div>
        </div>
    </body>
</html>
