<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">              
    <li class="nav-item has-treeview menu-open">
        <a href="#" class="nav-link active">
            <i class="nav-icon fas fa-home"></i>
            <p>
                Controllers
                <i class="right fas fa-angle-left"></i>
            </p>
        </a>
        <ul class="nav nav-treeview">
              <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                    <li class="nav-item">
                        <g:link controller="${c.logicalPropertyName}" class="nav-link">
                            <i class="fas fa-tachometer-alt nav-icon"></i>
                            <p><g:message code="${c.name.toLowerCase()}.label" /></p>
                        </g:link>
                    </li>
               </g:each>
        </ul>
    </li>
</ul>