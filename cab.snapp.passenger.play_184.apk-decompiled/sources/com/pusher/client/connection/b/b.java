package com.pusher.client.connection.b;

import androidx.core.app.NotificationCompat;
import com.google.gson.e;
import com.pusher.client.connection.ConnectionState;
import com.pusher.client.connection.c;
import com.pusher.java_websocket.c.h;
import io.fabric.sdk.android.services.settings.t;
import java.net.Proxy;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import javax.net.ssl.SSLException;

public class b implements com.pusher.client.connection.a.a, c {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f5035a = Logger.getLogger(b.class.getName());
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static final e f5036b = new e();
    /* access modifiers changed from: private */
    public final com.pusher.client.a.a c;
    private final a d;
    private final Map<ConnectionState, Set<com.pusher.client.connection.b>> e = new ConcurrentHashMap();
    private final URI f;
    private final Proxy g;
    private final int h;
    private final int i;
    /* access modifiers changed from: private */
    public volatile ConnectionState j = ConnectionState.DISCONNECTED;
    /* access modifiers changed from: private */
    public a k;
    private String l;
    private int m;

    class a {

        /* renamed from: b  reason: collision with root package name */
        private final long f5052b;
        private final long c;
        private Future<?> d;
        private Future<?> e;

        a(long j, long j2) {
            this.f5052b = j;
            this.c = j2;
        }

        /* access modifiers changed from: package-private */
        public final synchronized void a() {
            if (this.e != null) {
                this.e.cancel(true);
            }
            if (this.d != null) {
                this.d.cancel(false);
            }
            this.d = b.this.c.getTimers().schedule(new Runnable() {
                public final void run() {
                    b.f5035a.fine("Sending ping");
                    b.this.sendMessage("{\"event\": \"pusher:ping\"}");
                    a.this.c();
                }
            }, this.f5052b, TimeUnit.MILLISECONDS);
        }

        /* access modifiers changed from: package-private */
        public final synchronized void b() {
            if (this.d != null) {
                this.d.cancel(false);
            }
            if (this.e != null) {
                this.e.cancel(false);
            }
        }

        /* access modifiers changed from: package-private */
        public final synchronized void c() {
            if (this.e != null) {
                this.e.cancel(false);
            }
            this.e = b.this.c.getTimers().schedule(new Runnable() {
                public final void run() {
                    b.f5035a.fine("Timed out awaiting pong from server - disconnecting");
                    b.this.k.removeWebSocketListener();
                    b.this.disconnect();
                    b.this.onClose(-1, "Pong timeout", false);
                }
            }, this.c, TimeUnit.MILLISECONDS);
        }
    }

    public void onOpen(h hVar) {
    }

    public b(String str, long j2, long j3, int i2, int i3, Proxy proxy, com.pusher.client.a.a aVar) throws URISyntaxException {
        this.m = 0;
        String str2 = str;
        this.f = new URI(str);
        a aVar2 = new a(j2, j3);
        this.d = aVar2;
        this.h = i2;
        this.i = i3;
        this.g = proxy;
        this.c = aVar;
        for (ConnectionState put : ConnectionState.values()) {
            this.e.put(put, Collections.newSetFromMap(new ConcurrentHashMap()));
        }
    }

    public void connect() {
        this.c.queueOnEventThread(new Runnable() {
            public final void run() {
                if (b.this.j == ConnectionState.DISCONNECTED) {
                    b.b(b.this);
                }
            }
        });
    }

    public void disconnect() {
        this.c.queueOnEventThread(new Runnable() {
            public final void run() {
                if (b.this.j == ConnectionState.CONNECTED) {
                    b.this.a(ConnectionState.DISCONNECTING);
                    b.this.k.close();
                }
            }
        });
    }

    public void bind(ConnectionState connectionState, com.pusher.client.connection.b bVar) {
        this.e.get(connectionState).add(bVar);
    }

    public boolean unbind(ConnectionState connectionState, com.pusher.client.connection.b bVar) {
        return this.e.get(connectionState).remove(bVar);
    }

    public ConnectionState getState() {
        return this.j;
    }

    public void sendMessage(final String str) {
        this.c.queueOnEventThread(new Runnable() {
            public final void run() {
                try {
                    if (b.this.j == ConnectionState.CONNECTED) {
                        b.this.k.send(str);
                        return;
                    }
                    b bVar = b.this;
                    bVar.a("Cannot send a message while in " + b.this.j + " state", (String) null, (Exception) null);
                } catch (Exception e) {
                    b bVar2 = b.this;
                    bVar2.a("An exception occurred while sending message [" + str + "]", (String) null, e);
                }
            }
        });
    }

    public String getSocketId() {
        return this.l;
    }

    /* access modifiers changed from: private */
    public void a(ConnectionState connectionState) {
        Logger logger = f5035a;
        logger.fine("State transition requested, current [" + this.j + "], new [" + connectionState + "]");
        final c cVar = new c(this.j, connectionState);
        this.j = connectionState;
        HashSet<com.pusher.client.connection.b> hashSet = new HashSet<>();
        hashSet.addAll(this.e.get(ConnectionState.ALL));
        hashSet.addAll(this.e.get(connectionState));
        for (final com.pusher.client.connection.b bVar : hashSet) {
            this.c.queueOnEventThread(new Runnable() {
                public final void run() {
                    bVar.onConnectionStateChange(cVar);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void a(String str, String str2, Exception exc) {
        HashSet<com.pusher.client.connection.b> hashSet = new HashSet<>();
        for (Set<com.pusher.client.connection.b> addAll : this.e.values()) {
            hashSet.addAll(addAll);
        }
        for (final com.pusher.client.connection.b bVar : hashSet) {
            com.pusher.client.a.a aVar = this.c;
            final String str3 = str;
            final String str4 = str2;
            final Exception exc2 = exc;
            AnonymousClass5 r2 = new Runnable() {
                public final void run() {
                    bVar.onError(str3, str4, exc2);
                }
            };
            aVar.queueOnEventThread(r2);
        }
    }

    public void onMessage(final String str) {
        this.d.a();
        this.c.queueOnEventThread(new Runnable() {
            public final void run() {
                b.a(b.this, (String) ((Map) b.f5036b.fromJson(str, Map.class)).get(NotificationCompat.CATEGORY_EVENT), str);
            }
        });
    }

    public void onClose(int i2, String str, boolean z) {
        if (this.j == ConnectionState.DISCONNECTED || this.j == ConnectionState.RECONNECTING) {
            Logger logger = f5035a;
            logger.warning("Received close from underlying socket when already disconnected.Close code [" + i2 + "], Reason [" + str + "], Remote [" + z + "]");
            return;
        }
        if (!(i2 < 4000 || i2 >= 4100)) {
            a(ConnectionState.DISCONNECTING);
        }
        if (this.j == ConnectionState.CONNECTED || this.j == ConnectionState.CONNECTING) {
            int i3 = this.m;
            if (i3 < this.h) {
                this.m = i3 + 1;
                a(ConnectionState.RECONNECTING);
                int i4 = this.i;
                int i5 = this.m;
                this.c.getTimers().schedule(new Runnable() {
                    public final void run() {
                        b.this.k.removeWebSocketListener();
                        b.b(b.this);
                    }
                }, (long) Math.min(i4, i5 * i5), TimeUnit.SECONDS);
                return;
            }
            a(ConnectionState.DISCONNECTING);
            c();
            return;
        }
        if (this.j == ConnectionState.DISCONNECTING) {
            c();
        }
    }

    private void c() {
        this.d.b();
        this.c.queueOnEventThread(new Runnable() {
            public final void run() {
                b.this.a(ConnectionState.DISCONNECTED);
                b.this.c.shutdownThreads();
            }
        });
    }

    public void onError(final Exception exc) {
        this.c.queueOnEventThread(new Runnable() {
            public final void run() {
                b.this.a("An exception was thrown by the websocket", (String) null, exc);
            }
        });
    }

    static /* synthetic */ void b(b bVar) {
        try {
            bVar.k = bVar.c.newWebSocketClientWrapper(bVar.f, bVar.g, bVar);
            bVar.a(ConnectionState.CONNECTING);
            bVar.k.connect();
        } catch (SSLException e2) {
            bVar.a("Error connecting over SSL", (String) null, (Exception) e2);
        }
    }

    static /* synthetic */ void a(b bVar, String str, String str2) {
        Map map;
        if (!str.startsWith("pusher:")) {
            bVar.c.getChannelManager().onMessage(str, str2);
        } else if (str.equals("pusher:connection_established")) {
            bVar.l = (String) ((Map) f5036b.fromJson((String) ((Map) f5036b.fromJson(str2, Map.class)).get("data"), Map.class)).get("socket_id");
            if (bVar.j != ConnectionState.CONNECTED) {
                bVar.a(ConnectionState.CONNECTED);
            }
            bVar.m = 0;
        } else {
            if (str.equals("pusher:error")) {
                Object obj = ((Map) f5036b.fromJson(str2, Map.class)).get("data");
                if (obj instanceof String) {
                    map = (Map) f5036b.fromJson((String) obj, Map.class);
                } else {
                    map = (Map) obj;
                }
                String str3 = (String) map.get(t.PROMPT_MESSAGE_KEY);
                Object obj2 = map.get("code");
                bVar.a(str3, obj2 != null ? String.valueOf(Math.round(((Double) obj2).doubleValue())) : null, (Exception) null);
            }
        }
    }
}
