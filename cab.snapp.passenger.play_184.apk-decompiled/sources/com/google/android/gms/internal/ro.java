package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.Map;

final class ro implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a  reason: collision with root package name */
    private int f3500a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3501b;
    private Iterator<Map.Entry<K, V>> c;
    private /* synthetic */ ri d;

    private ro(ri riVar) {
        this.d = riVar;
        this.f3500a = -1;
    }

    /* synthetic */ ro(ri riVar, byte b2) {
        this(riVar);
    }

    private final Iterator<Map.Entry<K, V>> a() {
        if (this.c == null) {
            this.c = this.d.c.entrySet().iterator();
        }
        return this.c;
    }

    public final boolean hasNext() {
        return this.f3500a + 1 < this.d.f3495b.size() || (!this.d.c.isEmpty() && a().hasNext());
    }

    public final /* synthetic */ Object next() {
        this.f3501b = true;
        int i = this.f3500a + 1;
        this.f3500a = i;
        return (Map.Entry) (i < this.d.f3495b.size() ? this.d.f3495b.get(this.f3500a) : a().next());
    }

    public final void remove() {
        if (this.f3501b) {
            this.f3501b = false;
            this.d.a();
            if (this.f3500a < this.d.f3495b.size()) {
                ri riVar = this.d;
                int i = this.f3500a;
                this.f3500a = i - 1;
                Object unused = riVar.b(i);
                return;
            }
            a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
