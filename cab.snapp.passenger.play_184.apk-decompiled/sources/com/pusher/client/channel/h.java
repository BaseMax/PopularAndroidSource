package com.pusher.client.channel;

import com.google.gson.e;

public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final e f5033a = new e();

    /* renamed from: b  reason: collision with root package name */
    private final String f5034b;
    private final String c;

    public h(String str, String str2) {
        this.f5034b = str;
        this.c = str2;
    }

    public final String getId() {
        return this.f5034b;
    }

    public final String getInfo() {
        return this.c;
    }

    public final <V> V getInfo(Class<V> cls) {
        return f5033a.fromJson(this.c, cls);
    }

    public final String toString() {
        return String.format("[User id=%s, data=%s]", new Object[]{this.f5034b, this.c});
    }

    public final int hashCode() {
        int hashCode = this.f5034b.hashCode();
        String str = this.c;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            h hVar = (h) obj;
            if (getId().equals(hVar.getId()) && getInfo().equals(hVar.getInfo())) {
                return true;
            }
        }
        return false;
    }
}
