package com.pusher.client.channel.a;

import androidx.core.app.NotificationCompat;
import com.google.gson.p;
import com.pusher.client.b;
import com.pusher.client.channel.ChannelState;
import com.pusher.client.channel.f;
import com.pusher.client.channel.g;
import com.pusher.client.connection.ConnectionState;
import com.pusher.client.connection.a.a;
import java.util.LinkedHashMap;
import java.util.Map;

public class e extends a implements com.pusher.client.channel.e {
    private static final com.google.gson.e c = new com.google.gson.e();
    private final a d;
    private final b e;

    /* access modifiers changed from: protected */
    public String[] a() {
        return new String[]{"^(?!private-).*"};
    }

    public e(a aVar, String str, b bVar, com.pusher.client.a.a aVar2) {
        super(str, aVar2);
        this.d = aVar;
        this.e = bVar;
    }

    public void trigger(String str, String str2) {
        if (str == null || !str.startsWith("client-")) {
            throw new IllegalArgumentException("Cannot trigger event " + str + ": client events must start with \"client-\"");
        } else if (this.f5021b != ChannelState.SUBSCRIBED) {
            throw new IllegalStateException("Cannot trigger event " + str + " because channel " + this.f5020a + " is in " + this.f5021b.toString() + " state");
        } else if (this.d.getState() == ConnectionState.CONNECTED) {
            try {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, str);
                linkedHashMap.put("channel", this.f5020a);
                linkedHashMap.put("data", str2);
                this.d.sendMessage(c.toJson((Object) linkedHashMap));
            } catch (p unused) {
                throw new IllegalArgumentException("Cannot trigger event " + str + " because \"" + str2 + "\" could not be parsed as valid JSON");
            }
        } else {
            throw new IllegalStateException("Cannot trigger event " + str + " because connection is in " + this.d.getState().toString() + " state");
        }
    }

    public void bind(String str, g gVar) {
        if (gVar instanceof f) {
            super.bind(str, gVar);
            return;
        }
        throw new IllegalArgumentException("Only instances of PrivateChannelEventListener can be bound to a private channel");
    }

    public String toSubscribeMessage() {
        String b2 = b();
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "pusher:subscribe");
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            linkedHashMap2.put("channel", this.f5020a);
            linkedHashMap2.put("auth", (String) ((Map) c.fromJson(b2, Map.class)).get("auth"));
            linkedHashMap.put("data", linkedHashMap2);
            return c.toJson((Object) linkedHashMap);
        } catch (Exception e2) {
            throw new com.pusher.client.a("Unable to parse response from Authorizer: ".concat(String.valueOf(b2)), e2);
        }
    }

    /* access modifiers changed from: protected */
    public final String b() {
        return this.e.authorize(getName(), this.d.getSocketId());
    }

    public String toString() {
        return String.format("[Private Channel: name=%s]", new Object[]{this.f5020a});
    }
}
