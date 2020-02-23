<table class="table table-striped">
    <thead>
         <tr>
            <g:each in="${domainProperties}" var="p" status="i">
                <g:sortableColumn property="${p.property}" title="${p.label}" />
            </g:each>
            <th></td>
        </tr>
    </thead>
    <tbody>
        <g:each in="${collection}" var="bean" status="i">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <g:each in="${domainProperties}" var="p" status="j">
                    <td><f:display bean="${bean}" property="${p.property}"  displayStyle="${displayStyle?:'table'}" theme="${theme}"/></td>
                </g:each>
                <td class="text-right">
                    <g:link class="btn btn-default btn-sm"
                        controller="${property}" action="show" id="${bean.id}">
                        <i class="fas fa-eye"></i>
                        <g:message code="table.actions.show" />
                    </g:link>
                    <g:link class="btn btn-primary btn-sm"
                        controller="${property}" action="edit" id="${bean.id}">
                        <i class="fas fa-pen"></i>
                        <g:message code="table.actions.edit" />
                    </g:link>
                    <%--
                    <g:render template="/templates/modals/delete" model="[bean: bean]" />
                    --%>
                </td>
            </tr>
        </g:each>
    </tbody>
</table>
