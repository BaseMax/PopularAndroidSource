package com.pusher.client.channel.a;

import androidx.core.app.NotificationCompat;
import com.google.gson.e;
import com.pusher.client.channel.ChannelState;
import com.pusher.client.channel.b;
import com.pusher.client.channel.g;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class a implements c {
    private static final e c = new e();

    /* renamed from: a  reason: collision with root package name */
    protected final String f5020a;

    /* renamed from: b  reason: collision with root package name */
    protected volatile ChannelState f5021b = ChannelState.INITIAL;
    private final Map<String, Set<g>> d = new HashMap();
    /* access modifiers changed from: private */
    public b e;
    private final com.pusher.client.a.a f;
    private final Object g = new Object();

    /* access modifiers changed from: protected */
    public String[] a() {
        return new String[]{"^private-.*", "^presence-.*"};
    }

    public a(String str, com.pusher.client.a.a aVar) {
        if (str != null) {
            String[] a2 = a();
            int length = a2.length;
            int i = 0;
            while (i < length) {
                if (!str.matches(a2[i])) {
                    i++;
                } else {
                    throw new IllegalArgumentException("Channel name " + str + " is invalid. Private channel names must start with \"private-\" and presence channel names must start with \"presence-\"");
                }
            }
            this.f5020a = str;
            this.f = aVar;
            return;
        }
        throw new IllegalArgumentException("Cannot subscribe to a channel with a null name");
    }

    public String getName() {
        return this.f5020a;
    }

    public void bind(String str, g gVar) {
        a(str, gVar);
        synchronized (this.g) {
            Set set = this.d.get(str);
            if (set == null) {
                set = new HashSet();
                this.d.put(str, set);
            }
            set.add(gVar);
        }
    }

    public void unbind(String str, g gVar) {
        a(str, gVar);
        synchronized (this.g) {
            Set set = this.d.get(str);
            if (set != null) {
                set.remove(gVar);
                if (set.isEmpty()) {
                    this.d.remove(str);
                }
            }
        }
    }

    public boolean isSubscribed() {
        return this.f5021b == ChannelState.SUBSCRIBED;
    }

    public void onMessage(final String str, String str2) {
        HashSet<g> hashSet;
        if (str.equals("pusher_internal:subscription_succeeded")) {
            updateState(ChannelState.SUBSCRIBED);
            return;
        }
        synchronized (this.g) {
            Set set = this.d.get(str);
            hashSet = set != null ? new HashSet<>(set) : null;
        }
        if (hashSet != null) {
            for (final g gVar : hashSet) {
                final String str3 = (String) ((Map) c.fromJson(str2, Map.class)).get("data");
                this.f.queueOnEventThread(new Runnable() {
                    public final void run() {
                        gVar.onEvent(a.this.f5020a, str, str3);
                    }
                });
            }
        }
    }

    public String toSubscribeMessage() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "pusher:subscribe");
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("channel", this.f5020a);
        linkedHashMap.put("data", linkedHashMap2);
        return c.toJson((Object) linkedHashMap);
    }

    public String toUnsubscribeMessage() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, "pusher:unsubscribe");
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("channel", this.f5020a);
        linkedHashMap.put("data", linkedHashMap2);
        return c.toJson((Object) linkedHashMap);
    }

    public void updateState(ChannelState channelState) {
        this.f5021b = channelState;
        if (channelState == ChannelState.SUBSCRIBED && this.e != null) {
            this.f.queueOnEventThread(new Runnable() {
                public final void run() {
                    a.this.e.onSubscriptionSucceeded(a.this.getName());
                }
            });
        }
    }

    public void setEventListener(b bVar) {
        this.e = bVar;
    }

    public b getEventListener() {
        return this.e;
    }

    public int compareTo(c cVar) {
        return getName().compareTo(cVar.getName());
    }

    public String toString() {
        return String.format("[Public Channel: name=%s]", new Object[]{this.f5020a});
    }

    private void a(String str, g gVar) {
        if (str == null) {
            throw new IllegalArgumentException("Cannot bind or unbind to channel " + this.f5020a + " with a null event name");
        } else if (gVar == null) {
            throw new IllegalArgumentException("Cannot bind or unbind to channel " + this.f5020a + " with a null listener");
        } else if (str.startsWith("pusher_internal:")) {
            throw new IllegalArgumentException("Cannot bind or unbind channel " + this.f5020a + " with an internal event name such as " + str);
        } else if (this.f5021b == ChannelState.UNSUBSCRIBED) {
            throw new IllegalStateException("Cannot bind or unbind to events on a channel that has been unsubscribed. Call Pusher.subscribe() to resubscribe to this channel");
        }
    }
}
