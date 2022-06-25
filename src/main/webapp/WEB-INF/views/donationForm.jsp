<%--
  Created by IntelliJ IDEA.
  User: tomasztrojnar
  Date: 25/06/2022
  Time: 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="pl">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Document</title>
  <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" />
</head>
<body>

<jsp:include page="headerForm.jsp"></jsp:include>

<section class="form--steps">
  <div class="form--steps-instructions">
    <div class="form--steps-container">
      <h3>Ważne!</h3>
      <p data-step="1" class="active">
        Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
        wiedzieć komu najlepiej je przekazać.
      </p>
      <p data-step="2">
        Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
        wiedzieć komu najlepiej je przekazać.
      </p>
      <p data-step="3">
        Wybierz jedną, do
        której trafi Twoja przesyłka.
      </p>
      <p data-step="4">Podaj adres oraz termin odbioru rzeczy.</p>
    </div>
  </div>

  <div class="form--steps-container">
    <div class="form--steps-counter">Krok <span>1</span>/4</div>


      <!-- STEP 1: class .active is switching steps -->
      <div data-step="1" class="active">
        <h3>Zaznacz co chcesz oddać:</h3>
    <form:form method="post" action="/donate" modelAttribute="donation">

        <form:checkboxes path="categories" items="${categories}"/>
        <form:select path="institution" items="${institutions}"/>
        <form:input path="zipCode" />
        <form:input path="street" />
        <form:input path="city"/>
        <form:input path="quantity"/>
        <form:textarea path="pickUpComment"/>
        <form:input type="date" path="pickUpDate"/>
        <form:input type="time" path="pickUpTime" />
        <div class="form-group form-group--buttons">
          <button type="button" class="btn next-step">Dalej</button>
        </div>
      </div>


    </form:form>



      <!-- STEP 6 -->
      <div data-step="5">
        <h3>Podsumowanie Twojej darowizny</h3>

        <div class="summary">
          <div class="form-section">
            <h4>Oddajesz:</h4>
            <ul>
              <li>
                <span class="icon icon-bag"></span>
                <span class="summary--text"
                >4 worki ubrań w dobrym stanie dla dzieci</span
                >
              </li>

              <li>
                <span class="icon icon-hand"></span>
                <span class="summary--text"
                >Dla fundacji "Mam marzenie" w Warszawie</span
                >
              </li>
            </ul>
          </div>

          <div class="form-section form-section--columns">
            <div class="form-section--column">
              <h4>Adres odbioru:</h4>
              <ul>
                <li>Prosta 51</li>
                <li>Warszawa</li>
                <li>99-098</li>
                <li>123 456 789</li>
              </ul>
            </div>

            <div class="form-section--column">
              <h4>Termin odbioru:</h4>
              <ul>
                <li>13/12/2018</li>
                <li>15:40</li>
                <li>Brak uwag</li>
              </ul>
            </div>
          </div>
        </div>

        <div class="form-group form-group--buttons">
          <button type="button" class="btn prev-step">Wstecz</button>
          <button type="submit" class="btn">Potwierdzam</button>
        </div>
      </div>
    </form>
  </div>
</section>

<jsp:include page="footerForm.jsp"></jsp:include>

<script src="<c:url value="/resources/js/app.js"/>"></script>
</body>
</html>

