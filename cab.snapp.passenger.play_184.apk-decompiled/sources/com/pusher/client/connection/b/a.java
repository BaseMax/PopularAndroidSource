package com.pusher.client.connection.b;

import com.pusher.java_websocket.c.h;
import java.io.IOException;
import java.net.Proxy;
import java.net.URI;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;

public final class a extends com.pusher.java_websocket.a.a {
    private c c;

    public a(URI uri, Proxy proxy, c cVar) throws SSLException {
        super(uri);
        if (uri.getScheme().equals("wss")) {
            try {
                SSLContext instance = SSLContext.getInstance("TLS");
                instance.init(null, null, null);
                setSocket(instance.getSocketFactory().createSocket());
            } catch (IOException e) {
                throw new SSLException(e);
            } catch (NoSuchAlgorithmException e2) {
                throw new SSLException(e2);
            } catch (KeyManagementException e3) {
                throw new SSLException(e3);
            }
        }
        this.c = cVar;
        setProxy(proxy);
    }

    public final void onOpen(h hVar) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.onOpen(hVar);
        }
    }

    public final void onMessage(String str) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.onMessage(str);
        }
    }

    public final void onClose(int i, String str, boolean z) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.onClose(i, str, z);
        }
    }

    public final void onError(Exception exc) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.onError(exc);
        }
    }

    public final void removeWebSocketListener() {
        this.c = null;
    }
}
