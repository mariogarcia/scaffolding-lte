<g:set var="plugins" value="${applicationContext.getBean('pluginManager').allPlugins}" />
<div class="card">
    <div class="card-header">
        <h3 class="card-title">
            Plugins installed
        </h3>
        <div class="card-tools">
            <span class="badge bg-primary">${plugins.size()}</span>
        </div>
    </div>
    <div class="card-body">
        <table class="table">
            <thead>
                <th>Plugin Name</th>
                <th>Version</th>
            </thead>
            <tbody>
                 <g:each var="plugin" in="${plugins}">
                    <tr>
                        <td>${plugin.name}</td>
                        <td>${plugin.version}</td>
                    </tr>
                 </g:each>
            </tbody>
        </table>
    </div>
</div>