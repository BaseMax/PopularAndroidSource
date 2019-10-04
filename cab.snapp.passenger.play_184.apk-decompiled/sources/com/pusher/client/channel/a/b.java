package com.pusher.client.channel.a;

import com.google.gson.e;
import com.pusher.client.a.a;
import com.pusher.client.channel.ChannelState;
import com.pusher.client.channel.c;
import com.pusher.client.channel.f;
import com.pusher.client.connection.ConnectionState;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class b implements com.pusher.client.connection.b {

    /* renamed from: a  reason: collision with root package name */
    private static final e f5025a = new e();

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, c> f5026b = new ConcurrentHashMap();
    private final a c;
    /* access modifiers changed from: private */
    public com.pusher.client.connection.a.a d;

    public final void onError(String str, String str2, Exception exc) {
    }

    public b(a aVar) {
        this.c = aVar;
    }

    public final com.pusher.client.channel.a getChannel(String str) {
        if (str.startsWith("private-")) {
            throw new IllegalArgumentException("Please use the getPrivateChannel method");
        } else if (!str.startsWith("presence-")) {
            return a(str);
        } else {
            throw new IllegalArgumentException("Please use the getPresenceChannel method");
        }
    }

    public final com.pusher.client.channel.e getPrivateChannel(String str) throws IllegalArgumentException {
        if (str.startsWith("private-")) {
            return (com.pusher.client.channel.e) a(str);
        }
        throw new IllegalArgumentException("Private channels must begin with 'private-'");
    }

    public final c getPresenceChannel(String str) throws IllegalArgumentException {
        if (str.startsWith("presence-")) {
            return (c) a(str);
        }
        throw new IllegalArgumentException("Presence channels must begin with 'presence-'");
    }

    private c a(String str) {
        return this.f5026b.get(str);
    }

    public final void setConnection(com.pusher.client.connection.a.a aVar) {
        if (aVar != null) {
            com.pusher.client.connection.a.a aVar2 = this.d;
            if (aVar2 != null) {
                aVar2.unbind(ConnectionState.CONNECTED, this);
            }
            this.d = aVar;
            aVar.bind(ConnectionState.CONNECTED, this);
            return;
        }
        throw new IllegalArgumentException("Cannot construct ChannelManager with a null connection");
    }

    public final void unsubscribeFrom(String str) {
        if (str != null) {
            final c remove = this.f5026b.remove(str);
            if (remove != null && this.d.getState() == ConnectionState.CONNECTED) {
                this.c.queueOnEventThread(new Runnable() {
                    public final void run() {
                        b.this.d.sendMessage(remove.toUnsubscribeMessage());
                        remove.updateState(ChannelState.UNSUBSCRIBED);
                    }
                });
            }
            return;
        }
        throw new IllegalArgumentException("Cannot unsubscribe from null channel");
    }

    public final void onMessage(String str, String str2) {
        Object obj = ((Map) f5025a.fromJson(str2, Map.class)).get("channel");
        if (obj != null) {
            c cVar = this.f5026b.get((String) obj);
            if (cVar != null) {
                cVar.onMessage(str, str2);
            }
        }
    }

    public final void onConnectionStateChange(com.pusher.client.connection.c cVar) {
        if (cVar.getCurrentState() == ConnectionState.CONNECTED) {
            for (c a2 : this.f5026b.values()) {
                a(a2);
            }
        }
    }

    private void a(final c cVar) {
        this.c.queueOnEventThread(new Runnable() {
            public final void run() {
                if (b.this.d.getState() == ConnectionState.CONNECTED) {
                    try {
                        b.this.d.sendMessage(cVar.toSubscribeMessage());
                        cVar.updateState(ChannelState.SUBSCRIBE_SENT);
                    } catch (com.pusher.client.a e) {
                        b.a(b.this, cVar, e);
                    }
                }
            }
        });
    }

    public final void subscribeTo(c cVar, com.pusher.client.channel.b bVar, String... strArr) {
        if (cVar == null) {
            throw new IllegalArgumentException("Cannot subscribe to a null channel");
        } else if (!this.f5026b.containsKey(cVar.getName())) {
            for (String bind : strArr) {
                cVar.bind(bind, bVar);
            }
            cVar.setEventListener(bVar);
            this.f5026b.put(cVar.getName(), cVar);
            a(cVar);
        } else {
            throw new IllegalArgumentException("Already subscribed to a channel with name " + cVar.getName());
        }
    }

    static /* synthetic */ void a(b bVar, final c cVar, final Exception exc) {
        bVar.f5026b.remove(cVar.getName());
        cVar.updateState(ChannelState.FAILED);
        if (cVar.getEventListener() != null) {
            bVar.c.queueOnEventThread(new Runnable() {
                public final void run() {
                    ((f) cVar.getEventListener()).onAuthenticationFailure(exc.getMessage(), exc);
                }
            });
        }
    }
}
