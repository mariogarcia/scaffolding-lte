<div class="card">
    <div class="card-header">
        <h3 class="card-title">Grails Environment</h3>
    </div>
    <div class="card-body">
        <table class="table">
            <thead>
                <th>Property</th>
                <th>Value</th>
            </thead>
            <tbody>
                <tr>
                    <td>Environment</td>
                    <td>${grails.util.Environment.current.name}</td>
                </tr>
                <tr>
                    <td>App profile</td>
                    <td>${grailsApplication.config.grails?.profile}</td>
                </tr>
                <tr>
                    <td>App version</td>
                    <td><g:meta name="info.app.version"/></td>
                </tr>
                <tr>
                    <td>Grails version</td>
                    <td><g:meta name="info.app.grailsVersion"/></td>
                </tr>
                <tr>
                    <td>Groovy version</td>
                    <td>${GroovySystem.getVersion()}</td>
                </tr>
                <tr>
                    <td>JVM version</td>
                    <td>${System.getProperty('java.version')}</td>
                </tr>
                <tr>
                    <td>Reloading active</td>
                    <td>${grails.util.Environment.reloadingAgentEnabled}</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>