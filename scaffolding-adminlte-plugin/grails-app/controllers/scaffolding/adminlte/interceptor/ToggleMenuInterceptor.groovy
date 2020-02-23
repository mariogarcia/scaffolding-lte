package scaffolding.adminlte.interceptor

class ToggleMenuInterceptor {

    ToggleMenuInterceptor() {
        matchAll()
            .except(uri:'/error')
    }

    boolean after() {
        if (params.toggle == 'close') {
            session.toggle = 'sidebar-collapse'
        }

        if (params.toggle == 'open') {
            session.toggle = ''
        }

        return true
    }
}
