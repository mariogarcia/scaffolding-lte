<g:applyLayout name="main">
    <content tag="breadcrumb">
        <li class="breadcrumb-item">
            <g:link controller="home">home</g:link>
        </li>
    </content>
    <content tag="content">
        <div class="row">
            <div class="col-md-12">
                <div class="error-page">
                    <h2 class="headline text-warning"> 404</h2>
                    <div class="error-content">
                        <h3><i class="fas fa-exclamation-triangle text-warning"></i> Oops! No lo encuentro.</h3>
                        <p>
                            No puedo encontrar lo que buscas.
                            Vuelve a la <g:link controller="index">pagina principal</g:link> por si acaso .
                        </p>
                    </div>
                </div>
            </div>
        </div>
    <content>
</g:applyLayout>