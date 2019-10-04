package com.pusher.client.channel.a;

import androidx.core.app.NotificationCompat;
import com.google.gson.e;
import com.pusher.client.channel.g;
import com.pusher.client.channel.h;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class d extends e implements com.pusher.client.channel.c {
    private static final e c = new e();
    private final Map<String, h> d = Collections.synchronizedMap(new LinkedHashMap());
    private String e;

    class a {
        @com.google.gson.a.c("user_id")
        public String userId;
        @com.google.gson.a.c("user_info")
        public Object userInfo;
    }

    class b {
        @com.google.gson.a.c("presence")
        public c presence;
    }

    class c {
        @com.google.gson.a.c("count")
        public Integer count;
        @com.google.gson.a.c("hash")
        public Map<String, Object> hash;
        @com.google.gson.a.c("ids")
        public List<String> ids;
    }

    /* access modifiers changed from: protected */
    public final String[] a() {
        return new String[]{"^(?!presence-).*"};
    }

    public d(com.pusher.client.connection.a.a aVar, String str, com.pusher.client.b bVar, com.pusher.client.a.a aVar2) {
        super(aVar, str, bVar, aVar2);
    }

    public final Set<h> getUsers() {
        return new LinkedHashSet(this.d.values());
    }

    public final h getMe() {
        return this.d.get(this.e);
    }

    public final void onMessage(String str, String str2) {
        super.onMessage(str, str2);
        String str3 = null;
        if (str.equals("pusher_internal:subscription_succeeded")) {
            c cVar = ((b) c.fromJson(a(str2), b.class)).presence;
            List<String> list = cVar.ids;
            Map<String, Object> map = cVar.hash;
            if (list != null && !list.isEmpty()) {
                for (String next : list) {
                    this.d.put(next, new h(next, map.get(next) != null ? c.toJson(map.get(next)) : null));
                }
            }
            com.pusher.client.channel.b eventListener = getEventListener();
            if (eventListener != null) {
                ((com.pusher.client.channel.d) eventListener).onUsersInformationReceived(getName(), getUsers());
            }
        } else if (str.equals("pusher_internal:member_added")) {
            a aVar = (a) c.fromJson(a(str2), a.class);
            String str4 = aVar.userId;
            if (aVar.userInfo != null) {
                str3 = c.toJson(aVar.userInfo);
            }
            h hVar = new h(str4, str3);
            this.d.put(str4, hVar);
            com.pusher.client.channel.b eventListener2 = getEventListener();
            if (eventListener2 != null) {
                ((com.pusher.client.channel.d) eventListener2).userSubscribed(getName(), hVar);
            }
        } else {
            if (str.equals("pusher_internal:member_removed")) {
                h remove = this.d.remove(((a) c.fromJson(a(str2), a.class)).userId);
                com.pusher.client.channel.b eventListener3 = getEventListener();
                if (eventListener3 != null) {
                    ((com.pusher.client.channel.d) eventListener3).userUnsubscribed(getName(), remove);
                }
            }
        }
    }

    public final String toSubscribeMessage() {
        String b2 = b();
        try {
            Map map = (Map) c.fromJson(b2, Map.class);
            Object obj = map.get("channel_data");
            this.e = String.valueOf(((Map) c.fromJson((String) obj, Map.class)).get("user_id"));
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "pusher:subscribe");
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            linkedHashMap2.put("channel", this.f5020a);
            linkedHashMap2.put("auth", (String) map.get("auth"));
            linkedHashMap2.put("channel_data", obj);
            linkedHashMap.put("data", linkedHashMap2);
            return c.toJson((Object) linkedHashMap);
        } catch (Exception e2) {
            throw new com.pusher.client.a("Unable to parse response from Authorizer: ".concat(String.valueOf(b2)), e2);
        }
    }

    public final void bind(String str, g gVar) {
        if (gVar instanceof com.pusher.client.channel.d) {
            super.bind(str, gVar);
            return;
        }
        throw new IllegalArgumentException("Only instances of PresenceChannelEventListener can be bound to a presence channel");
    }

    public final String toString() {
        return String.format("[Presence Channel: name=%s]", new Object[]{this.f5020a});
    }

    private static String a(String str) {
        return (String) ((Map) c.fromJson(str, Map.class)).get("data");
    }
}
