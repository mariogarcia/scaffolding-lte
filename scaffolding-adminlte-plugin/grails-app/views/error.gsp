<g:applyLayout name="main">
    <content tag="breadcrumb">
        <li class="breadcrumb-item">
            <g:link controller="home">home</g:link>
        </li>
    </content>
    <body>
        <div class="row">
            <div class="col-md-12">
                <div class="error-page">
                    <h2 class="headline text-danger">500</h2>
                    <div class="error-content">
                        <h3><i class="fas fa-exclamation-triangle text-danger"></i> Oops! Algo se ha roto.</h3>
                        <p>Intentaremos arreglar el error lo antes posible.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <g:if env="development">
                    <g:if test="${Throwable.isInstance(exception)}">
                        <g:renderException exception="${exception}" />
                    </g:if>
                    <g:elseif test="${request.getAttribute('javax.servlet.error.exception')}">
                        <g:renderException exception="${request.getAttribute('javax.servlet.error.exception')}" />
                    </g:elseif>
                    <g:else>
                        <ul class="errors">
                            <li>An error has occurred</li>
                            <li>Exception: ${exception}</li>
                            <li>Message: ${message}</li>
                            <li>Path: ${path}</li>
                        </ul>
                    </g:else>
                </g:if>
                <g:else>
                    <ul class="errors">
                        <li>An error has occurred</li>
                    </ul>
                </g:else>
            </div>
        </div>
     </body>
</g:applyLayout>