package com.google.android.gms.internal;

import java.util.Map;

final class qb<K> implements Map.Entry<K, Object> {

    /* renamed from: a  reason: collision with root package name */
    private Map.Entry<K, qa> f3464a;

    private qb(Map.Entry<K, qa> entry) {
        this.f3464a = entry;
    }

    /* synthetic */ qb(Map.Entry entry, byte b2) {
        this(entry);
    }

    public final K getKey() {
        return this.f3464a.getKey();
    }

    public final Object getValue() {
        if (this.f3464a.getValue() == null) {
            return null;
        }
        return qa.zzcyj();
    }

    public final Object setValue(Object obj) {
        if (obj instanceof qr) {
            return this.f3464a.getValue().zzk((qr) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }

    public final qa zzcyk() {
        return this.f3464a.getValue();
    }
}
