package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.bumptech.glide.e.g;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.b.j;
import com.bumptech.glide.load.resource.d.c;
import com.bumptech.glide.manager.c;
import com.bumptech.glide.manager.d;
import com.bumptech.glide.manager.i;
import com.bumptech.glide.manager.m;
import com.bumptech.glide.manager.n;
import com.bumptech.glide.manager.o;
import java.io.File;
import java.net.URL;
import java.util.concurrent.CopyOnWriteArrayList;

public final class h implements i {
    private static final com.bumptech.glide.e.h e = ((com.bumptech.glide.e.h) com.bumptech.glide.e.h.decodeTypeOf(Bitmap.class).lock());
    private static final com.bumptech.glide.e.h f = ((com.bumptech.glide.e.h) com.bumptech.glide.e.h.decodeTypeOf(c.class).lock());
    private static final com.bumptech.glide.e.h g = ((com.bumptech.glide.e.h) ((com.bumptech.glide.e.h) com.bumptech.glide.e.h.diskCacheStrategyOf(j.DATA).priority(Priority.LOW)).skipMemoryCache(true));

    /* renamed from: a  reason: collision with root package name */
    protected final c f2086a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f2087b;
    final com.bumptech.glide.manager.h c;
    final CopyOnWriteArrayList<g<Object>> d;
    private final n h;
    private final m i;
    private final o j;
    private final Runnable k;
    private final Handler l;
    private final com.bumptech.glide.manager.c m;
    private com.bumptech.glide.e.h n;

    static class a extends com.bumptech.glide.e.a.j<View, Object> {
        public final void onResourceReady(Object obj, com.bumptech.glide.e.b.b<? super Object> bVar) {
        }

        a(View view) {
            super(view);
        }
    }

    class b implements c.a {

        /* renamed from: b  reason: collision with root package name */
        private final n f2090b;

        b(n nVar) {
            this.f2090b = nVar;
        }

        public final void onConnectivityChanged(boolean z) {
            if (z) {
                synchronized (h.this) {
                    this.f2090b.restartRequests();
                }
            }
        }
    }

    public h(c cVar, com.bumptech.glide.manager.h hVar, m mVar, Context context) {
        this(cVar, hVar, mVar, new n(), cVar.f1998b, context);
    }

    private h(c cVar, com.bumptech.glide.manager.h hVar, m mVar, n nVar, d dVar, Context context) {
        this.j = new o();
        this.k = new Runnable() {
            public final void run() {
                h.this.c.addListener(h.this);
            }
        };
        this.l = new Handler(Looper.getMainLooper());
        this.f2086a = cVar;
        this.c = hVar;
        this.i = mVar;
        this.h = nVar;
        this.f2087b = context;
        this.m = dVar.build(context.getApplicationContext(), new b(nVar));
        if (k.isOnBackgroundThread()) {
            this.l.post(this.k);
        } else {
            hVar.addListener(this);
        }
        hVar.addListener(this.m);
        this.d = new CopyOnWriteArrayList<>(cVar.f1997a.getDefaultRequestListeners());
        a(cVar.f1997a.getDefaultRequestOptions());
        synchronized (cVar.c) {
            if (!cVar.c.contains(this)) {
                cVar.c.add(this);
            } else {
                throw new IllegalStateException("Cannot register already registered manager");
            }
        }
    }

    private synchronized void a(com.bumptech.glide.e.h hVar) {
        this.n = (com.bumptech.glide.e.h) ((com.bumptech.glide.e.h) hVar.clone()).autoClone();
    }

    private synchronized void b(com.bumptech.glide.e.h hVar) {
        this.n = (com.bumptech.glide.e.h) this.n.apply(hVar);
    }

    public final synchronized h applyDefaultRequestOptions(com.bumptech.glide.e.h hVar) {
        b(hVar);
        return this;
    }

    public final synchronized h setDefaultRequestOptions(com.bumptech.glide.e.h hVar) {
        a(hVar);
        return this;
    }

    public final h addDefaultRequestListener(g<Object> gVar) {
        this.d.add(gVar);
        return this;
    }

    public final synchronized boolean isPaused() {
        return this.h.isPaused();
    }

    public final synchronized void pauseRequests() {
        this.h.pauseRequests();
    }

    public final synchronized void pauseAllRequests() {
        this.h.pauseAllRequests();
    }

    public final synchronized void pauseRequestsRecursive() {
        pauseRequests();
        for (h pauseRequests : this.i.getDescendants()) {
            pauseRequests.pauseRequests();
        }
    }

    public final synchronized void resumeRequests() {
        this.h.resumeRequests();
    }

    public final synchronized void resumeRequestsRecursive() {
        k.assertMainThread();
        resumeRequests();
        for (h resumeRequests : this.i.getDescendants()) {
            resumeRequests.resumeRequests();
        }
    }

    public final synchronized void onStart() {
        resumeRequests();
        this.j.onStart();
    }

    public final synchronized void onStop() {
        pauseRequests();
        this.j.onStop();
    }

    public final synchronized void onDestroy() {
        this.j.onDestroy();
        for (com.bumptech.glide.e.a.i<?> clear : this.j.getAll()) {
            clear(clear);
        }
        this.j.clear();
        this.h.clearRequests();
        this.c.removeListener(this);
        this.c.removeListener(this.m);
        this.l.removeCallbacks(this.k);
        c cVar = this.f2086a;
        synchronized (cVar.c) {
            if (cVar.c.contains(this)) {
                cVar.c.remove(this);
            } else {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
        }
    }

    public final g<Bitmap> asBitmap() {
        return as(Bitmap.class).apply((com.bumptech.glide.e.a) e);
    }

    public final g<com.bumptech.glide.load.resource.d.c> asGif() {
        return as(com.bumptech.glide.load.resource.d.c.class).apply((com.bumptech.glide.e.a) f);
    }

    public final g<Drawable> asDrawable() {
        return as(Drawable.class);
    }

    public final g<Drawable> load(Bitmap bitmap) {
        return asDrawable().load(bitmap);
    }

    public final g<Drawable> load(Drawable drawable) {
        return asDrawable().load(drawable);
    }

    public final g<Drawable> load(String str) {
        return asDrawable().load(str);
    }

    public final g<Drawable> load(Uri uri) {
        return asDrawable().load(uri);
    }

    public final g<Drawable> load(File file) {
        return asDrawable().load(file);
    }

    public final g<Drawable> load(Integer num) {
        return asDrawable().load(num);
    }

    @Deprecated
    public final g<Drawable> load(URL url) {
        return asDrawable().load(url);
    }

    public final g<Drawable> load(byte[] bArr) {
        return asDrawable().load(bArr);
    }

    public final g<Drawable> load(Object obj) {
        return asDrawable().load(obj);
    }

    public final g<File> downloadOnly() {
        return as(File.class).apply((com.bumptech.glide.e.a) g);
    }

    public final g<File> download(Object obj) {
        return downloadOnly().load(obj);
    }

    public final g<File> asFile() {
        return as(File.class).apply((com.bumptech.glide.e.a) com.bumptech.glide.e.h.skipMemoryCacheOf(true));
    }

    public final <ResourceType> g<ResourceType> as(Class<ResourceType> cls) {
        return new g<>(this.f2086a, this, cls, this.f2087b);
    }

    public final void clear(View view) {
        clear((com.bumptech.glide.e.a.i<?>) new a(view));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0025, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void clear(com.bumptech.glide.e.a.i<?> r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            if (r3 != 0) goto L_0x0005
            monitor-exit(r2)
            return
        L_0x0005:
            boolean r0 = r2.a((com.bumptech.glide.e.a.i<?>) r3)     // Catch:{ all -> 0x0026 }
            if (r0 != 0) goto L_0x0024
            com.bumptech.glide.c r0 = r2.f2086a     // Catch:{ all -> 0x0026 }
            boolean r0 = r0.a((com.bumptech.glide.e.a.i<?>) r3)     // Catch:{ all -> 0x0026 }
            if (r0 != 0) goto L_0x0024
            com.bumptech.glide.e.d r0 = r3.getRequest()     // Catch:{ all -> 0x0026 }
            if (r0 == 0) goto L_0x0024
            com.bumptech.glide.e.d r0 = r3.getRequest()     // Catch:{ all -> 0x0026 }
            r1 = 0
            r3.setRequest(r1)     // Catch:{ all -> 0x0026 }
            r0.clear()     // Catch:{ all -> 0x0026 }
        L_0x0024:
            monitor-exit(r2)
            return
        L_0x0026:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.h.clear(com.bumptech.glide.e.a.i):void");
    }

    /* access modifiers changed from: package-private */
    public final synchronized boolean a(com.bumptech.glide.e.a.i<?> iVar) {
        com.bumptech.glide.e.d request = iVar.getRequest();
        if (request == null) {
            return true;
        }
        if (!this.h.clearRemoveAndRecycle(request)) {
            return false;
        }
        this.j.untrack(iVar);
        iVar.setRequest(null);
        return true;
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a(com.bumptech.glide.e.a.i<?> iVar, com.bumptech.glide.e.d dVar) {
        this.j.track(iVar);
        this.h.runRequest(dVar);
    }

    /* access modifiers changed from: package-private */
    public final synchronized com.bumptech.glide.e.h a() {
        return this.n;
    }

    /* access modifiers changed from: package-private */
    public final <T> i<?, T> a(Class<T> cls) {
        return this.f2086a.f1997a.getDefaultTransitionOptions(cls);
    }

    public final synchronized String toString() {
        return super.toString() + "{tracker=" + this.h + ", treeNode=" + this.i + "}";
    }
}
