package com.mapbox.android.telemetry;

import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

final class l<T> {

    /* renamed from: a  reason: collision with root package name */
    final Queue<T> f4981a = new ConcurrentLinkedQueue();

    l() {
    }

    /* access modifiers changed from: package-private */
    public final boolean a(T t) {
        try {
            return this.f4981a.add(t);
        } catch (Exception unused) {
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public final List<T> a() {
        ArrayList arrayList = new ArrayList(this.f4981a.size());
        try {
            arrayList.addAll(this.f4981a);
            this.f4981a.clear();
        } catch (Exception unused) {
        }
        return arrayList;
    }
}
