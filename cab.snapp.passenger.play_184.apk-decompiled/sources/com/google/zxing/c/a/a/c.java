package com.google.zxing.c.a.a;

import java.util.ArrayList;
import java.util.List;

final class c {

    /* renamed from: a  reason: collision with root package name */
    final List<b> f4267a;

    /* renamed from: b  reason: collision with root package name */
    final int f4268b;
    private final boolean c = false;

    c(List<b> list, int i) {
        this.f4267a = new ArrayList(list);
        this.f4268b = i;
    }

    /* access modifiers changed from: package-private */
    public final boolean a(List<b> list) {
        return this.f4267a.equals(list);
    }

    public final String toString() {
        return "{ " + this.f4267a + " }";
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (!this.f4267a.equals(cVar.f4267a) || this.c != cVar.c) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.f4267a.hashCode() ^ Boolean.valueOf(this.c).hashCode();
    }
}
