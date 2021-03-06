<t:messagesPanel/>

<spring:hasBindErrors name="profileForm">
    <c:set var="bindingResult" scope="request" value="${errors}"/>
</spring:hasBindErrors>

<form:form method="put" servletRelativeAction="/app/profile" modelAttribute="profileForm" class="form-horizontal">

    <div class="form-group">
        <div class="${bindingResult.hasFieldErrors('accountId') ? 'has-error' : ''}">
            <form:label path="accountId" class="col-sm-2 control-label">Account ID</form:label>
            <div class="col-sm-8">
                <form:input path="accountId" cssClass="form-control"/>
                <formEx:errors path="accountId"/>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="${bindingResult.hasFieldErrors('firstName') or bindingResult.hasFieldErrors('lastName') ? 'has-error' : ''}">
            <form:label path="firstName" class="col-sm-2 control-label">Name</form:label>
        </div>
        <div class="${bindingResult.hasFieldErrors('firstName') ? 'has-error' : ''}">
            <div class="col-sm-4">
                <form:input path="firstName" cssClass="form-control" placeholder="First Name"/>
                <formEx:errors path="firstName"/>
            </div>
        </div>
        <div class="${bindingResult.hasFieldErrors('lastName') ? 'has-error' : ''}">
            <div class="col-sm-4">
                <form:input path="lastName" cssClass="form-control" placeholder="Last name"/>
                <formEx:errors path="lastName"/>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="${bindingResult.hasFieldErrors('enabledAutoLogin') ? 'has-error' : ''}">
            <form:label path="enabledAutoLogin" cssClass="col-sm-2 control-label">Auto Login</form:label>
        </div>
        <div class="col-sm-4">
            <c:forEach var="enabledAutoLoginCodeListElement" items="${CL_ENABLED}">
                <div class="radio-inline">
                    <form:radiobutton path="enabledAutoLogin"
                                      value="${enabledAutoLoginCodeListElement.key}"
                                      label="${enabledAutoLoginCodeListElement.value}"/>
                </div>
            </c:forEach>
            <div>
                <formEx:errors path="enabledAutoLogin"/>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-8">
            <a href="<c:url value='/app/profile'/>" class="btn btn-default">
                <span class="glyphicon glyphicon-step-backward"></span>
                Back
            </a>
            <button class="btn btn-default">
                <span class="glyphicon glyphicon-floppy-save"></span>
                Save
            </button>
        </div>
    </div>
</form:form>
