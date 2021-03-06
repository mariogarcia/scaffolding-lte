<g:applyLayout name="main">
    <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
    <content tag="title"><g:message code="default.show.label" args="[entityName]" />s</content>
    <content tag="breadcrumb">
        <li class="breadcrumb-item">
            <g:link url="/">Home</g:link>
        </li>
        <li class="breadcrumb-item">
            <g:message code="default.show.label" args="[entityName]" />
        </li>
    </content>
    <body>
        <div id="show-${propertyName}" class="card" role="main">
            <g:form resource="\${this.${propertyName}}" method="DELETE">
                <div class="card-header">
                    <h3 class="card-title">
                        <g:message code="default.show.label" args="[entityName]" />
                    </h3>
                    <div class="card-tools">
                        <ul class="nav nav-grails">
                            <li class="nav-item">
                                <g:link class="list" action="index">
                                    <i class="nav-icon fas fa-list"></i>
                                    <g:message code="default.list.label" args="[entityName]" />
                                </g:link>
                            </li>
                            <li class="nav-item">
                                <g:link class="create" action="create">
                                    <i class="nav-icon fas fa-plus"></i>
                                    <g:message code="default.new.label" args="[entityName]" />
                                </g:link>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card-body">
                    <f:display bean="${propertyName}" />
                </div>
                <div class="card-footer">
                        <g:link class="btn btn-primary edit" action="edit" resource="\${this.${propertyName}}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <input class="btn btn-danger delete float-right" type="submit" value="\${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('\${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </div>
            </g:form>
        </div>
    </body>
</g:applyLayout>
