package com.pusher.client;

import com.pusher.client.channel.a.b;
import com.pusher.client.channel.d;
import com.pusher.client.channel.e;
import com.pusher.client.channel.f;
import com.pusher.client.connection.ConnectionState;
import com.pusher.client.connection.a.a;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final d f5018a;

    /* renamed from: b  reason: collision with root package name */
    private final a f5019b;
    private final b c;
    private final com.pusher.client.a.a d;

    public c(String str) {
        this(str, new d());
    }

    public c(String str, d dVar) {
        this(str, dVar, new com.pusher.client.a.a());
    }

    private c(String str, d dVar, com.pusher.client.a.a aVar) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("API Key cannot be null or empty");
        } else if (dVar != null) {
            this.f5018a = dVar;
            this.d = aVar;
            this.f5019b = aVar.getConnection(str, this.f5018a);
            this.c = aVar.getChannelManager();
            this.c.setConnection(this.f5019b);
        } else {
            throw new IllegalArgumentException("PusherOptions cannot be null");
        }
    }

    public final com.pusher.client.connection.a getConnection() {
        return this.f5019b;
    }

    public final void connect() {
        connect(null, new ConnectionState[0]);
    }

    public final void connect(com.pusher.client.connection.b bVar, ConnectionState... connectionStateArr) {
        if (bVar != null) {
            if (connectionStateArr.length == 0) {
                connectionStateArr = new ConnectionState[]{ConnectionState.ALL};
            }
            for (ConnectionState bind : connectionStateArr) {
                this.f5019b.bind(bind, bVar);
            }
        } else if (connectionStateArr.length > 0) {
            throw new IllegalArgumentException("Cannot bind to connection states with a null connection event listener");
        }
        this.f5019b.connect();
    }

    public final void disconnect() {
        if (this.f5019b.getState() == ConnectionState.CONNECTED) {
            this.f5019b.disconnect();
        }
    }

    public final com.pusher.client.channel.a subscribe(String str) {
        return subscribe(str, null, new String[0]);
    }

    public final com.pusher.client.channel.a subscribe(String str, com.pusher.client.channel.b bVar, String... strArr) {
        com.pusher.client.channel.a.a newPublicChannel = this.d.newPublicChannel(str);
        this.c.subscribeTo(newPublicChannel, bVar, strArr);
        return newPublicChannel;
    }

    public final e subscribePrivate(String str) {
        return subscribePrivate(str, null, new String[0]);
    }

    public final e subscribePrivate(String str, f fVar, String... strArr) {
        a();
        com.pusher.client.channel.a.e newPrivateChannel = this.d.newPrivateChannel(this.f5019b, str, this.f5018a.getAuthorizer());
        this.c.subscribeTo(newPrivateChannel, fVar, strArr);
        return newPrivateChannel;
    }

    public final com.pusher.client.channel.c subscribePresence(String str) {
        return subscribePresence(str, null, new String[0]);
    }

    public final com.pusher.client.channel.c subscribePresence(String str, d dVar, String... strArr) {
        a();
        com.pusher.client.channel.a.d newPresenceChannel = this.d.newPresenceChannel(this.f5019b, str, this.f5018a.getAuthorizer());
        this.c.subscribeTo(newPresenceChannel, dVar, strArr);
        return newPresenceChannel;
    }

    public final void unsubscribe(String str) {
        this.c.unsubscribeFrom(str);
    }

    private void a() {
        if (this.f5018a.getAuthorizer() == null) {
            throw new IllegalStateException("Cannot subscribe to a private or presence channel because no Authorizer has been set. Call PusherOptions.setAuthorizer() before connecting to Pusher");
        }
    }

    public final com.pusher.client.channel.a getChannel(String str) {
        return this.c.getChannel(str);
    }

    public final e getPrivateChannel(String str) {
        return this.c.getPrivateChannel(str);
    }

    public final com.pusher.client.channel.c getPresenceChannel(String str) {
        return this.c.getPresenceChannel(str);
    }
}
