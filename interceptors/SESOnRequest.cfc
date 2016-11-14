component extends='coldbox.system.Interceptor' {

    public void function preProcess(event, interceptData) {
        event.setSESBaseURL( ( event.isSSL() ? "https://" : "http://" ) & cgi.http_host & "/index.cfm");
    }

}
