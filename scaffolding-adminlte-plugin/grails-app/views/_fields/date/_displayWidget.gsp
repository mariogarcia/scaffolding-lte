<%-- GETTING DATE FORMAT INFORMATION FROM CONFIGURATION --%>
<g:set var="dateFormatBindings" value="${grailsApplication.config?.grails?.databinding?.dateFormats}" />
<g:set var="dateFormat" value="${dateFormatBindings ? dateFormatBindings?.first() : 'yyyy/MM/dd'}" />

<%-- DISPLAY FORMATTED VALUE --%>
<g:formatDate format="${dateFormat}" date="${value}" />