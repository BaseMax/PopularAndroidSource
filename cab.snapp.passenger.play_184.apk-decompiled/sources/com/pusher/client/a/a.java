package com.pusher.client.a;

import com.pusher.client.channel.a.b;
import com.pusher.client.channel.a.e;
import com.pusher.client.connection.b.c;
import com.pusher.client.d;
import java.net.Proxy;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import javax.net.ssl.SSLException;

public final class a {
    /* access modifiers changed from: private */
    public static final Object e = new Object();

    /* renamed from: a  reason: collision with root package name */
    private com.pusher.client.connection.a.a f5013a;

    /* renamed from: b  reason: collision with root package name */
    private b f5014b;
    private ExecutorService c;
    private ScheduledExecutorService d;

    /* renamed from: com.pusher.client.a.a$a  reason: collision with other inner class name */
    static class C0096a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final String f5017a;

        public C0096a(String str) {
            this.f5017a = str;
        }

        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setDaemon(true);
            thread.setName("pusher-java-client " + this.f5017a);
            return thread;
        }
    }

    public final synchronized com.pusher.client.connection.a.a getConnection(String str, d dVar) {
        if (this.f5013a == null) {
            try {
                com.pusher.client.connection.b.b bVar = new com.pusher.client.connection.b.b(dVar.buildUrl(str), dVar.getActivityTimeout(), dVar.getPongTimeout(), dVar.getMaxReconnectionAttempts(), dVar.getMaxReconnectGapInSeconds(), dVar.getProxy(), this);
                this.f5013a = bVar;
            } catch (URISyntaxException e2) {
                throw new IllegalArgumentException("Failed to initialise connection", e2);
            }
        }
        return this.f5013a;
    }

    public final com.pusher.client.connection.b.a newWebSocketClientWrapper(URI uri, Proxy proxy, c cVar) throws SSLException {
        return new com.pusher.client.connection.b.a(uri, proxy, cVar);
    }

    public final synchronized ScheduledExecutorService getTimers() {
        if (this.d == null) {
            this.d = Executors.newSingleThreadScheduledExecutor(new C0096a("timers"));
        }
        return this.d;
    }

    public final com.pusher.client.channel.a.a newPublicChannel(String str) {
        return new com.pusher.client.channel.a.a(str, this);
    }

    public final e newPrivateChannel(com.pusher.client.connection.a.a aVar, String str, com.pusher.client.b bVar) {
        return new e(aVar, str, bVar, this);
    }

    public final com.pusher.client.channel.a.d newPresenceChannel(com.pusher.client.connection.a.a aVar, String str, com.pusher.client.b bVar) {
        return new com.pusher.client.channel.a.d(aVar, str, bVar, this);
    }

    public final synchronized b getChannelManager() {
        if (this.f5014b == null) {
            this.f5014b = new b(this);
        }
        return this.f5014b;
    }

    public final synchronized void queueOnEventThread(final Runnable runnable) {
        if (this.c == null) {
            this.c = Executors.newSingleThreadExecutor(new C0096a("eventQueue"));
        }
        this.c.execute(new Runnable() {
            public final void run() {
                synchronized (a.e) {
                    runnable.run();
                }
            }
        });
    }

    public final synchronized void shutdownThreads() {
        if (this.c != null) {
            this.c.shutdown();
            this.c = null;
        }
        if (this.d != null) {
            this.d.shutdown();
            this.d = null;
        }
    }
}
