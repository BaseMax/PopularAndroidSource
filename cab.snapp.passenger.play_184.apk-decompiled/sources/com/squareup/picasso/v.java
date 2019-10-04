package com.squareup.picasso;

import android.app.Notification;
import android.app.NotificationManager;
import android.appwidget.AppWidgetManager;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.squareup.picasso.Picasso;

abstract class v extends a<c> {
    final RemoteViews m;
    final int n;
    e o;
    private c p;

    static class a extends v {
        private final int[] p;

        /* access modifiers changed from: package-private */
        public final /* synthetic */ Object b() {
            return v.super.b();
        }

        a(Picasso picasso, w wVar, RemoteViews remoteViews, int i, int[] iArr, int i2, int i3, String str, Object obj, int i4, e eVar) {
            super(picasso, wVar, remoteViews, i, i4, i2, i3, obj, str, eVar);
            this.p = iArr;
        }

        /* access modifiers changed from: package-private */
        public final void d() {
            AppWidgetManager.getInstance(this.f5254a.e).updateAppWidget(this.p, this.m);
        }
    }

    static class b extends v {
        private final int p;
        private final String q;
        private final Notification r;

        /* access modifiers changed from: package-private */
        public final /* synthetic */ Object b() {
            return v.super.b();
        }

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        b(Picasso picasso, w wVar, RemoteViews remoteViews, int i, int i2, Notification notification, String str, int i3, int i4, String str2, Object obj, int i5, e eVar) {
            super(picasso, wVar, remoteViews, i, i5, i3, i4, obj, str2, eVar);
            this.p = i2;
            this.q = str;
            this.r = notification;
        }

        /* access modifiers changed from: package-private */
        public final void d() {
            ((NotificationManager) af.a(this.f5254a.e, "notification")).notify(this.q, this.p, this.r);
        }
    }

    static class c {

        /* renamed from: a  reason: collision with root package name */
        final RemoteViews f5303a;

        /* renamed from: b  reason: collision with root package name */
        final int f5304b;

        c(RemoteViews remoteViews, int i) {
            this.f5303a = remoteViews;
            this.f5304b = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                c cVar = (c) obj;
                return this.f5304b == cVar.f5304b && this.f5303a.equals(cVar.f5303a);
            }
        }

        public final int hashCode() {
            return (this.f5303a.hashCode() * 31) + this.f5304b;
        }
    }

    /* access modifiers changed from: package-private */
    public abstract void d();

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    v(Picasso picasso, w wVar, RemoteViews remoteViews, int i, int i2, int i3, int i4, Object obj, String str, e eVar) {
        super(picasso, null, wVar, i3, i4, i2, null, str, obj, false);
        this.m = remoteViews;
        this.n = i;
        this.o = eVar;
    }

    /* access modifiers changed from: package-private */
    public void complete(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        this.m.setImageViewBitmap(this.n, bitmap);
        d();
        e eVar = this.o;
        if (eVar != null) {
            eVar.onSuccess();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        super.a();
        if (this.o != null) {
            this.o = null;
        }
    }

    public void error(Exception exc) {
        if (this.g != 0) {
            a(this.g);
        }
        e eVar = this.o;
        if (eVar != null) {
            eVar.onError(exc);
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: c */
    public final c b() {
        if (this.p == null) {
            this.p = new c(this.m, this.n);
        }
        return this.p;
    }

    /* access modifiers changed from: package-private */
    public final void a(int i) {
        this.m.setImageViewResource(this.n, i);
        d();
    }
}
