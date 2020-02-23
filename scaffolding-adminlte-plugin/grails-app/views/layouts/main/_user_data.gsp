<div class="image">
    <g:set var="photoUrl" value="${oncesec?.userPhoto()}" />
    <g:if test="${photoUrl}">
        <img
            class="img-circle elevation-2"
            src="${photoUrl}"
            alt="User Avatar">
    </g:if>
    <g:else>
        <asset:image
            class="img-circle elevation-2"
            src="default_user.jpg"
            alt="Default user image" />
    </g:else>
</div>
<div class="info">
    <%--
    <sec:ifAllGranted roles='ROLE_ADMIN'>
        <g:link controller="user" action="show" id="${sec.loggedInUserInfo(field: 'id')}">
            <sec:loggedInUserInfo field='username'/>
        </g:link>
    </sec:ifAllGranted>
    <sec:ifNotGranted roles='ROLE_ADMIN'>
        <sec:loggedInUserInfo field='username'/>
    </sec:ifNotGranted>
    --%>
</div>
