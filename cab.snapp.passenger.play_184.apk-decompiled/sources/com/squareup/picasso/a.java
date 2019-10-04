package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.squareup.picasso.Picasso;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

abstract class a<T> {

    /* renamed from: a  reason: collision with root package name */
    final Picasso f5254a;

    /* renamed from: b  reason: collision with root package name */
    final w f5255b;
    final WeakReference<T> c;
    final boolean d;
    final int e;
    final int f;
    final int g;
    final Drawable h;
    final String i;
    final Object j;
    boolean k;
    boolean l;

    /* renamed from: com.squareup.picasso.a$a  reason: collision with other inner class name */
    static class C0104a<M> extends WeakReference<M> {

        /* renamed from: a  reason: collision with root package name */
        final a f5256a;

        C0104a(a aVar, M m, ReferenceQueue<? super M> referenceQueue) {
            super(m, referenceQueue);
            this.f5256a = aVar;
        }
    }

    /* access modifiers changed from: package-private */
    public abstract void complete(Bitmap bitmap, Picasso.LoadedFrom loadedFrom);

    /* access modifiers changed from: package-private */
    public abstract void error(Exception exc);

    a(Picasso picasso, T t, w wVar, int i2, int i3, int i4, Drawable drawable, String str, Object obj, boolean z) {
        C0104a aVar;
        this.f5254a = picasso;
        this.f5255b = wVar;
        if (t == null) {
            aVar = null;
        } else {
            aVar = new C0104a(this, t, picasso.k);
        }
        this.c = aVar;
        this.e = i2;
        this.f = i3;
        this.d = z;
        this.g = i4;
        this.h = drawable;
        this.i = str;
        this.j = obj == null ? this : obj;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        this.l = true;
    }

    /* access modifiers changed from: package-private */
    public T b() {
        WeakReference<T> weakReference = this.c;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }
}
