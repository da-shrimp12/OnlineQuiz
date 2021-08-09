
<%@page import="java.util.List"%>
<%@page import="entity.Quiz"%>
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
            <div class="menu">
				<img src="images/menu_bg.gif" alt=""/>
				<div class="all_menu">
					<c:if test="${sessionScope.user.role==1}">
						<a href="">Home</a>
						<a href="">Take Quiz</a>
						<a href="">Make Quiz</a>
						<a href="">Manage Quiz</a>
						<a href="">Log out</a>
					</c:if>
					<c:if test="${sessionScope.user.role==2}">
						<a href="">Home</a>
						<a href="">Take Quiz</a>
						<a href="">Log out</a>
					</c:if>
				</div>
			</div>
            <div class="main">
                <div class="title">Welcome <span class="user">${sessionScope.user.name}</span></div>
                <div class="title timer">Time Remaining <span id="t"></span></div><br>
                    <c:forEach items="${list}" var="item">
                    <div class="perQuestion">
                        <div  class="questionx">${item.question}</div>
                        <form id="form" action="start-quiz" method="post">
                            <table>
                                <tr>
                                    <td><input type="checkbox" name="choice" value="1"></td>
                                    <td>${item.option1}</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="choice" value="2"></td>
                                    <td>${item.option2}</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="choice" value="3"></td>
                                    <td>${item.option3}</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="choice" value="4"></td>
                                    <td>${item.option4}</td>
                                </tr>
                            </table>
                            <button id="btn" onclick="nextQuestion(${item.id})" type="button">Next</button>
                        </form>
                    </div>
                </c:forEach>
            </div>
        </div>
        <script>
			var index = ${tag};
			var txt = '${txt}';
			var questions = document.getElementsByClassName('perQuestion');
			function display() {
				for (var i = 0; i < questions.length; i++) {
					questions[i].style.display = 'none';
				}
				questions[index].style.display = 'block';
			}
			display();
			function submitToServer() {
				if (index === questions.length - 1) {
					var myForm = document.createElement("form");
					myForm.method = "POST";
					myForm.action = "result";
					myForm.style.display = "none";
					var myInput = document.createElement("input");
					myInput.type = "text";
					myInput.name = "data";
					myInput.value = txt;
					myForm.appendChild(myInput);
					document.body.appendChild(myForm);
					myForm.submit();
				}
			}
			function addQuestion(qid) {
				txt += qid + '-';
				var checkboxes = document.querySelectorAll('input[type=checkbox]:checked');
				if (checkboxes.length !== 0) {
					for (var i = 0; i < checkboxes.length; i++) {
						if (i !== checkboxes.length - 1) {
							txt += checkboxes[i].value + ' ';
						} else {
							txt += checkboxes[i].value;
						}
					}
					
					for (var i = 0; i < checkboxes.length; i++) {
						checkboxes[i].checked = false;
					}
				}
				if (index !== questions.length - 1) {
					txt += '|';
				}
			}
			
			function nextQuestion(qid) {
				addQuestion(qid);
				submitToServer();
				index++;
				document.cookie = "myindex=" + index;
				document.cookie = "answers=" + txt;
				console.log(txt);
				display();
			}

			var total = ${total};
			function timer() {
				total--;
				if (total <= 0) {
					document.getElementById('btn').click();
					submitToServer();
					return;
				}
				var minute = Math.floor(total / 60);
				var second = total - minute * 60;
				var timeBox = document.getElementById('t');
				if (second < 10) {
					timeBox.innerHTML = minute + ":0" + second;
				} else {
					timeBox.innerHTML = minute + ":" + second;
				}
			}
			timer();
			setInterval(function () {
				timer();
			}, 1000);

        </script>
    </body>
</html>
