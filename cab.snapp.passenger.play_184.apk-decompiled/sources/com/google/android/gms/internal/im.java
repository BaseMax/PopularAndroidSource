package com.google.android.gms.internal;

import java.util.Iterator;

final class im implements Iterator<String> {

    /* renamed from: a  reason: collision with root package name */
    private Iterator<String> f3215a = this.f3216b.f3602a.keySet().iterator();

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ zzcgx f3216b;

    im(zzcgx zzcgx) {
        this.f3216b = zzcgx;
    }

    public final boolean hasNext() {
        return this.f3215a.hasNext();
    }

    public final /* synthetic */ Object next() {
        return this.f3215a.next();
    }

    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
