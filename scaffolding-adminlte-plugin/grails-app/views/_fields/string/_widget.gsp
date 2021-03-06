<g:set var="error">
    <g:hasErrors bean="${bean}" field="${property}">is-invalid</g:hasErrors>
</g:set>

<g:if test="${attrs.rich}">
    <g:textArea
        class="summernote"
        name="${property}"
        value="${attrs.value}"
        rows="10"
        cols="40" />
</g:if>
<g:else>
    <g:if test="${required}">
        <g:textField
            required=""
            placeholder="${attrs.placeholder}"
            class="form-control ${error}"
            name="${property}"
            value="${value}"/>
    </g:if>
    <g:else>
        <g:textField
            placeholder="${attrs.placeholder}"
            class="form-control ${error}"
            name="${property}"
            value="${value}"/>
    </g:else>
</g:else>
