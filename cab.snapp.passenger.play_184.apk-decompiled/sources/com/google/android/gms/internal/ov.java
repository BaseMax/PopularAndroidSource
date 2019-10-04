package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class ov implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    private int f3428a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final int f3429b = this.c.size();
    private /* synthetic */ ou c;

    ov(ou ouVar) {
        this.c = ouVar;
    }

    private final byte a() {
        try {
            ou ouVar = this.c;
            int i = this.f3428a;
            this.f3428a = i + 1;
            return ouVar.zzkn(i);
        } catch (IndexOutOfBoundsException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    public final boolean hasNext() {
        return this.f3428a < this.f3429b;
    }

    public final /* synthetic */ Object next() {
        return Byte.valueOf(a());
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
