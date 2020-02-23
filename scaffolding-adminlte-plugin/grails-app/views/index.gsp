<g:applyLayout name="main">
    <content tag="title">Index</content>
    <content tag="breadcrumb">
        <li class="breadcrumb-item">
            <g:link controller="home">home</g:link>
        </li>
    </content>
    <body>
        <div class="row">
            <div class="col-md-3">
                <g:set var="controllers" value="${grailsApplication.controllerClasses.size()}" />
                <g:render
                    template="templates/widgets/small_box"
                    model="[label: 'Controllers', value: controllers, style: 'bg-info']" />
            </div>
            <div class="col-md-3">
                <g:set var="domains" value="${grailsApplication.domainClasses.size()}" />
                <g:render
                    template="templates/widgets/small_box"
                    model="[label: 'Domains', value: domains, style: 'bg-success']" />
            </div>
            <div class="col-md-3">
                <g:set var="services" value="${grailsApplication.serviceClasses.size()}" />
                <g:render
                    template="templates/widgets/small_box"
                    model="[label: 'Services', value: services, style: 'bg-warning']" />
            </div>
            <div class="col-md-3">
                <g:set var="tagLibraries" value="${grailsApplication.tagLibClasses.size()}" />
                <g:render
                    template="templates/widgets/small_box"
                    model="[label: 'Tab Libraries', value: tagLibraries, style: 'bg-danger']" />
            </div>
        </div>
        <div class="row">
           <!-- Grails Environment-->
            <div class="col-md-6">
                <g:render template="templates/widgets/grails_info_panel" />
            </div>
            <!-- Grails Plugins -->
            <div class="col-md-6">
                <g:render template="templates/widgets/grails_info_plugins" />
            </div>
         </div>
    </body>
</g:applyLayout>