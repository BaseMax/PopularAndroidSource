package com.google.android.gms.internal;

import java.util.Map;

final class rn implements Comparable<rn>, Map.Entry<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final K f3498a;

    /* renamed from: b  reason: collision with root package name */
    private V f3499b;
    private /* synthetic */ ri c;

    rn(ri riVar, K k, V v) {
        this.c = riVar;
        this.f3498a = k;
        this.f3499b = v;
    }

    rn(ri riVar, Map.Entry<K, V> entry) {
        this(riVar, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public final /* synthetic */ int compareTo(Object obj) {
        return ((Comparable) getKey()).compareTo((Comparable) ((rn) obj).getKey());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return a(this.f3498a, entry.getKey()) && a(this.f3499b, entry.getValue());
    }

    public final /* synthetic */ Object getKey() {
        return this.f3498a;
    }

    public final V getValue() {
        return this.f3499b;
    }

    public final int hashCode() {
        K k = this.f3498a;
        int i = 0;
        int hashCode = k == null ? 0 : k.hashCode();
        V v = this.f3499b;
        if (v != null) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    public final V setValue(V v) {
        this.c.a();
        V v2 = this.f3499b;
        this.f3499b = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f3498a);
        String valueOf2 = String.valueOf(this.f3499b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
