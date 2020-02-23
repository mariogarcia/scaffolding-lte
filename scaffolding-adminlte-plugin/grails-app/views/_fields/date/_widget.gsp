<%-- GETTING DATE FORMAT INFORMATION FROM CONFIGURATION --%>
<g:set var="dateFormatBindings" value="${grailsApplication.config?.grails?.databinding?.dateFormats}" />
<g:set var="dateFormat" value="${dateFormatBindings ? dateFormatBindings?.first() : 'yyyy/MM/dd'}" />

<%-- RESOLVING ERROR CSS CLASS IF ERRORS DETECTED --%>
<g:set var="error">
    <g:hasErrors bean="${parent}" field="${property}">is-invalid</g:hasErrors>
</g:set>

<%-- BUILDING HTML INPUT --%>
<div class="input-group">
    <div class="input-group-prepend">
      <span class="input-group-text">
          <i class="far fa-calendar-alt"></i>
      </span>
    </div>
    <g:textField
        placeholder="${attrs.placeholder}"
        class="form-control ${error}"
        required="${required ? 'required' : '' }"
        name="${property}"
        value="${value ? g.formatDate(date: value, format: dateFormat) : null}" />
</div>

<%-- BUILDING JAVASCRIPT BEHAVIOR --%>
<script>
    $(function() {
        $("input[name='${property}']").daterangepicker({
            locale: {
                <%-- TODO: moment.js DOESNT MATCH WITH JAVA SIMPLEDATEFORMAT --%>
                "format": "${dateFormat.toUpperCase()}"
            },
            singleDatePicker: true,
            showDropdowns: true,
            <g:if test="${since}">
            minYear: ${raw(since)},
            </g:if>
            <g:if test="${to}">
            maxYear: ${raw(to)}
            </g:if>
        });
    });
</script>
