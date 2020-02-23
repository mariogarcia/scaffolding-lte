<!-- Left navbar links -->
<ul class="navbar-nav">
    <li class="nav-item">
        <g:if test="${params.action == 'save'}">
            <g:set var="oclose" value="${!session.toggle ? 'close' : 'open'}" />
            <g:link
                controller="${params.controller}"
                action="index"
                class="nav-link"
                params="[toggle: oclose]">
                <i class="fas fa-bars"></i>
            </g:link>
        </g:if>
        <g:else>
            <a class="nav-link"
                href="${request.forwardURI}?toggle=${!session.toggle ? 'close' : 'open'}">
                <i class="fas fa-bars"></i>
            </a>
    </g:else>
    </li>
</ul>
<ul class="navbar-nav ml-auto">
    <li class="nav-item">
    <g:link controller='logoff'>
        Salir
        <i class="fas fa-sign-out-alt"></i>
    </g:link>
    </li>
</ul>