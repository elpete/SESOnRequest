component extends="coldbox.system.Interceptor" {

    property name="includeIndex" inject="coldbox:setting:includeIndex@ses-on-request";
    property name="forceSSL" inject="coldbox:setting:forceSSL@ses-on-request";

    public void function preProcess( event, interceptData ) {
        var appMapping = getSetting( "AppMapping" );
        var SESBaseURL = event.isSSL() || forceSSL ? "https://" : "http://";
        SESBaseURL &= CGI.http_host;
        if( len( appMapping ) ) {
            SESBaseURL &= "/" & appMapping;
        }
        if( includeIndex ) {
            SESBaseURL &= "/index.cfm";
        }
        event.setSESBaseURL( SESBaseURL );
    }

}
