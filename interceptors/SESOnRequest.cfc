component extends='coldbox.system.Interceptor' {
    property name='includeIndex' inject='coldbox:setting:includeIndex@SESOnRequest';
    
    public void function preProcess(event, interceptData) {
        var SESBaseURL = event.isSSL() ? "https://" : "http://";
        SESBaseURL &= cgi.http_host;
        if( SESOnRequestSettings.includeIndex ) {
            SESBaseURL &= "/index.cfm";
        }
        event.setSESBaseURL( SESBaseURL );
    }

}
