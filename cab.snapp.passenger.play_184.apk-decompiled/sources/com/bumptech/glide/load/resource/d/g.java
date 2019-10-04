package com.bumptech.glide.load.resource.d;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.bumptech.glide.e.a.i;
import com.bumptech.glide.h;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.j;
import java.util.ArrayList;
import java.util.List;

final class g {

    /* renamed from: a  reason: collision with root package name */
    final com.bumptech.glide.b.a f2385a;

    /* renamed from: b  reason: collision with root package name */
    final List<b> f2386b;
    final h c;
    boolean d;
    boolean e;
    a f;
    boolean g;
    a h;
    Bitmap i;
    j<Bitmap> j;
    a k;
    private final Handler l;
    private final e m;
    private boolean n;
    private com.bumptech.glide.g<Bitmap> o;
    private d p;

    static class a extends com.bumptech.glide.e.a.g<Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        final int f2387a;

        /* renamed from: b  reason: collision with root package name */
        Bitmap f2388b;
        private final Handler c;
        private final long d;

        a(Handler handler, int i, long j) {
            this.c = handler;
            this.f2387a = i;
            this.d = j;
        }

        public final void onResourceReady(Bitmap bitmap, com.bumptech.glide.e.b.b<? super Bitmap> bVar) {
            this.f2388b = bitmap;
            this.c.sendMessageAtTime(this.c.obtainMessage(1, this), this.d);
        }
    }

    public interface b {
        void onFrameReady();
    }

    class c implements Handler.Callback {
        c() {
        }

        public final boolean handleMessage(Message message) {
            if (message.what == 1) {
                g.this.a((a) message.obj);
                return true;
            }
            if (message.what == 2) {
                g.this.c.clear((i<?>) (a) message.obj);
            }
            return false;
        }
    }

    interface d {
        void onFrameReady();
    }

    g(com.bumptech.glide.c cVar, com.bumptech.glide.b.a aVar, int i2, int i3, j<Bitmap> jVar, Bitmap bitmap) {
        this(cVar.getBitmapPool(), com.bumptech.glide.c.with(cVar.getContext()), aVar, (com.bumptech.glide.g<Bitmap>) com.bumptech.glide.c.with(cVar.getContext()).asBitmap().apply(((com.bumptech.glide.e.h) ((com.bumptech.glide.e.h) com.bumptech.glide.e.h.diskCacheStrategyOf(com.bumptech.glide.load.b.j.NONE).useAnimationPool(true)).skipMemoryCache(true)).override(i2, i3)), jVar, bitmap);
    }

    private g(e eVar, h hVar, com.bumptech.glide.b.a aVar, com.bumptech.glide.g<Bitmap> gVar, j<Bitmap> jVar, Bitmap bitmap) {
        this.f2386b = new ArrayList();
        this.c = hVar;
        Handler handler = new Handler(Looper.getMainLooper(), new c());
        this.m = eVar;
        this.l = handler;
        this.o = gVar;
        this.f2385a = aVar;
        a(jVar, bitmap);
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [com.bumptech.glide.load.j, com.bumptech.glide.load.j<android.graphics.Bitmap>, java.lang.Object] */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(com.bumptech.glide.load.j<android.graphics.Bitmap> r2, android.graphics.Bitmap r3) {
        /*
            r1 = this;
            java.lang.Object r0 = com.bumptech.glide.g.j.checkNotNull(r2)
            com.bumptech.glide.load.j r0 = (com.bumptech.glide.load.j) r0
            r1.j = r0
            java.lang.Object r3 = com.bumptech.glide.g.j.checkNotNull(r3)
            android.graphics.Bitmap r3 = (android.graphics.Bitmap) r3
            r1.i = r3
            com.bumptech.glide.g<android.graphics.Bitmap> r3 = r1.o
            com.bumptech.glide.e.h r0 = new com.bumptech.glide.e.h
            r0.<init>()
            com.bumptech.glide.e.a r2 = r0.transform((com.bumptech.glide.load.j<android.graphics.Bitmap>) r2)
            com.bumptech.glide.g r2 = r3.apply((com.bumptech.glide.e.a) r2)
            r1.o = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.d.g.a(com.bumptech.glide.load.j, android.graphics.Bitmap):void");
    }

    /* access modifiers changed from: package-private */
    public final void a(b bVar) {
        if (this.g) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        } else if (!this.f2386b.contains(bVar)) {
            boolean isEmpty = this.f2386b.isEmpty();
            this.f2386b.add(bVar);
            if (isEmpty) {
                d();
            }
        } else {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(b bVar) {
        this.f2386b.remove(bVar);
        if (this.f2386b.isEmpty()) {
            this.d = false;
        }
    }

    /* access modifiers changed from: package-private */
    public final int a() {
        return this.f2385a.getFrameCount();
    }

    private void d() {
        if (!this.d) {
            this.d = true;
            this.g = false;
            e();
        }
    }

    /* access modifiers changed from: package-private */
    public final Bitmap b() {
        a aVar = this.f;
        if (aVar != null) {
            return aVar.f2388b;
        }
        return this.i;
    }

    private void e() {
        if (this.d && !this.n) {
            if (this.e) {
                com.bumptech.glide.g.j.checkArgument(this.k == null, "Pending target must be null when starting from the first frame");
                this.f2385a.resetFrameIndex();
                this.e = false;
            }
            a aVar = this.k;
            if (aVar != null) {
                this.k = null;
                a(aVar);
                return;
            }
            this.n = true;
            long uptimeMillis = SystemClock.uptimeMillis() + ((long) this.f2385a.getNextDelay());
            this.f2385a.advance();
            this.h = new a(this.l, this.f2385a.getCurrentFrameIndex(), uptimeMillis);
            this.o.apply((com.bumptech.glide.e.a) com.bumptech.glide.e.h.signatureOf(f())).load((Object) this.f2385a).into(this.h);
        }
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        Bitmap bitmap = this.i;
        if (bitmap != null) {
            this.m.put(bitmap);
            this.i = null;
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(a aVar) {
        d dVar = this.p;
        if (dVar != null) {
            dVar.onFrameReady();
        }
        this.n = false;
        if (this.g) {
            this.l.obtainMessage(2, aVar).sendToTarget();
        } else if (!this.d) {
            this.k = aVar;
        } else {
            if (aVar.f2388b != null) {
                c();
                a aVar2 = this.f;
                this.f = aVar;
                for (int size = this.f2386b.size() - 1; size >= 0; size--) {
                    this.f2386b.get(size).onFrameReady();
                }
                if (aVar2 != null) {
                    this.l.obtainMessage(2, aVar2).sendToTarget();
                }
            }
            e();
        }
    }

    private static com.bumptech.glide.load.d f() {
        return new com.bumptech.glide.f.c(Double.valueOf(Math.random()));
    }
}
