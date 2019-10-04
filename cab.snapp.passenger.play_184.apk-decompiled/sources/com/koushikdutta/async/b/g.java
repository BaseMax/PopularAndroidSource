package com.koushikdutta.async.b;

import java.util.ArrayList;
import java.util.Iterator;

public class g<T> extends i<T> {

    /* renamed from: a  reason: collision with root package name */
    ArrayList<f<T>> f4480a;

    /* renamed from: b  reason: collision with root package name */
    final f<T> f4481b = new f<T>() {
        public final void onCompleted(Exception exc, T t) {
            ArrayList<f<T>> arrayList;
            synchronized (g.this) {
                arrayList = g.this.f4480a;
                g.this.f4480a = null;
            }
            if (arrayList != null) {
                Iterator<f<T>> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().onCompleted(exc, t);
                }
            }
        }
    };

    public g<T> setCallback(f<T> fVar) {
        synchronized (this) {
            if (this.f4480a == null) {
                this.f4480a = new ArrayList<>();
            }
            this.f4480a.add(fVar);
        }
        super.setCallback((f) this.f4481b);
        return this;
    }
}
