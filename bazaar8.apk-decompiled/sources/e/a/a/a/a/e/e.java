package e.a.a.a.a.e;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

/* compiled from: HttpRequest */
class e implements HttpRequest.b {
    public HttpURLConnection a(URL url) {
        return (HttpURLConnection) url.openConnection();
    }

    public HttpURLConnection a(URL url, Proxy proxy) {
        return (HttpURLConnection) url.openConnection(proxy);
    }
}
