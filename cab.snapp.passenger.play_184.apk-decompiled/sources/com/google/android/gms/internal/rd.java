package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Stack;

final class rd implements Iterator<pa> {

    /* renamed from: a  reason: collision with root package name */
    private final Stack<rb> f3488a;

    /* renamed from: b  reason: collision with root package name */
    private pa f3489b;

    private rd(ou ouVar) {
        this.f3488a = new Stack<>();
        this.f3489b = a(ouVar);
    }

    /* synthetic */ rd(ou ouVar, byte b2) {
        this(ouVar);
    }

    private final pa a() {
        while (!this.f3488a.isEmpty()) {
            pa a2 = a(this.f3488a.pop().e);
            if (!a2.isEmpty()) {
                return a2;
            }
        }
        return null;
    }

    private final pa a(ou ouVar) {
        while (ouVar instanceof rb) {
            rb rbVar = (rb) ouVar;
            this.f3488a.push(rbVar);
            ouVar = rbVar.d;
        }
        return (pa) ouVar;
    }

    public final boolean hasNext() {
        return this.f3489b != null;
    }

    public final /* synthetic */ Object next() {
        pa paVar = this.f3489b;
        if (paVar != null) {
            this.f3489b = a();
            return paVar;
        }
        throw new NoSuchElementException();
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
