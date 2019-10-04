package com.bumptech.glide.e;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.core.util.Pools;
import com.bumptech.glide.Priority;
import com.bumptech.glide.e;
import com.bumptech.glide.e.a.h;
import com.bumptech.glide.e.a.i;
import com.bumptech.glide.g.a.a;
import com.bumptech.glide.g.a.c;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.b.q;
import com.bumptech.glide.load.b.v;
import java.util.List;
import java.util.concurrent.Executor;

public final class j<R> implements h, d, i, a.c {

    /* renamed from: a  reason: collision with root package name */
    private static final Pools.Pool<j<?>> f2047a = com.bumptech.glide.g.a.a.threadSafe(150, new a.C0038a<j<?>>() {
        public final j<?> create() {
            return new j<>();
        }
    });
    private static final boolean c = Log.isLoggable("Request", 2);
    private Drawable A;
    private int B;
    private int C;
    private RuntimeException D;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2048b;
    private final String d;
    private final c e;
    private g<R> f;
    private e g;
    private Context h;
    private e i;
    private Object j;
    private Class<R> k;
    private a<?> l;
    private int m;
    private int n;
    private Priority o;
    private i<R> p;
    private List<g<R>> q;
    private k r;
    private com.bumptech.glide.e.b.c<? super R> s;
    private Executor t;
    private v<R> u;
    private k.d v;
    private long w;
    private int x;
    private Drawable y;
    private Drawable z;

    enum a {
        ;
        
        public static final int CLEARED$613311b9 = 6;
        public static final int COMPLETE$613311b9 = 4;
        public static final int FAILED$613311b9 = 5;
        public static final int PENDING$613311b9 = 1;
        public static final int RUNNING$613311b9 = 2;
        public static final int WAITING_FOR_SIZE$613311b9 = 3;

        static {
            f2049a = new int[]{PENDING$613311b9, RUNNING$613311b9, WAITING_FOR_SIZE$613311b9, COMPLETE$613311b9, FAILED$613311b9, CLEARED$613311b9};
        }

        public static int[] values$43a1017f() {
            return (int[]) f2049a.clone();
        }
    }

    public static <R> j<R> obtain(Context context, e eVar, Object obj, Class<R> cls, a<?> aVar, int i2, int i3, Priority priority, i<R> iVar, g<R> gVar, List<g<R>> list, e eVar2, k kVar, com.bumptech.glide.e.b.c<? super R> cVar, Executor executor) {
        j<R> acquire = f2047a.acquire();
        if (acquire == null) {
            acquire = new j<>();
        }
        acquire.a(context, eVar, obj, cls, aVar, i2, i3, priority, iVar, gVar, list, eVar2, kVar, cVar, executor);
        return acquire;
    }

    j() {
        this.d = c ? String.valueOf(super.hashCode()) : null;
        this.e = c.newInstance();
    }

    private synchronized void a(Context context, e eVar, Object obj, Class<R> cls, a<?> aVar, int i2, int i3, Priority priority, i<R> iVar, g<R> gVar, List<g<R>> list, e eVar2, k kVar, com.bumptech.glide.e.b.c<? super R> cVar, Executor executor) {
        this.h = context;
        this.i = eVar;
        this.j = obj;
        this.k = cls;
        this.l = aVar;
        this.m = i2;
        this.n = i3;
        this.o = priority;
        this.p = iVar;
        this.f = gVar;
        this.q = list;
        this.g = eVar2;
        this.r = kVar;
        this.s = cVar;
        this.t = executor;
        this.x = a.PENDING$613311b9;
        if (this.D == null && eVar.isLoggingRequestOriginsEnabled()) {
            this.D = new RuntimeException("Glide request origin trace");
        }
    }

    public final c getVerifier() {
        return this.e;
    }

    public final synchronized void recycle() {
        a();
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = -1;
        this.n = -1;
        this.p = null;
        this.q = null;
        this.f = null;
        this.g = null;
        this.s = null;
        this.v = null;
        this.y = null;
        this.z = null;
        this.A = null;
        this.B = -1;
        this.C = -1;
        this.D = null;
        f2047a.release(this);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00a1, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void begin() {
        /*
            r3 = this;
            monitor-enter(r3)
            r3.a()     // Catch:{ all -> 0x00aa }
            com.bumptech.glide.g.a.c r0 = r3.e     // Catch:{ all -> 0x00aa }
            r0.throwIfRecycled()     // Catch:{ all -> 0x00aa }
            long r0 = com.bumptech.glide.g.f.getLogTime()     // Catch:{ all -> 0x00aa }
            r3.w = r0     // Catch:{ all -> 0x00aa }
            java.lang.Object r0 = r3.j     // Catch:{ all -> 0x00aa }
            if (r0 != 0) goto L_0x003a
            int r0 = r3.m     // Catch:{ all -> 0x00aa }
            int r1 = r3.n     // Catch:{ all -> 0x00aa }
            boolean r0 = com.bumptech.glide.g.k.isValidDimensions(r0, r1)     // Catch:{ all -> 0x00aa }
            if (r0 == 0) goto L_0x0025
            int r0 = r3.m     // Catch:{ all -> 0x00aa }
            r3.B = r0     // Catch:{ all -> 0x00aa }
            int r0 = r3.n     // Catch:{ all -> 0x00aa }
            r3.C = r0     // Catch:{ all -> 0x00aa }
        L_0x0025:
            android.graphics.drawable.Drawable r0 = r3.c()     // Catch:{ all -> 0x00aa }
            if (r0 != 0) goto L_0x002d
            r0 = 5
            goto L_0x002e
        L_0x002d:
            r0 = 3
        L_0x002e:
            com.bumptech.glide.load.b.q r1 = new com.bumptech.glide.load.b.q     // Catch:{ all -> 0x00aa }
            java.lang.String r2 = "Received null model"
            r1.<init>(r2)     // Catch:{ all -> 0x00aa }
            r3.a((com.bumptech.glide.load.b.q) r1, (int) r0)     // Catch:{ all -> 0x00aa }
            monitor-exit(r3)
            return
        L_0x003a:
            int r0 = r3.x     // Catch:{ all -> 0x00aa }
            int r1 = com.bumptech.glide.e.j.a.RUNNING$613311b9     // Catch:{ all -> 0x00aa }
            if (r0 == r1) goto L_0x00a2
            int r0 = r3.x     // Catch:{ all -> 0x00aa }
            int r1 = com.bumptech.glide.e.j.a.COMPLETE$613311b9     // Catch:{ all -> 0x00aa }
            if (r0 != r1) goto L_0x004f
            com.bumptech.glide.load.b.v<R> r0 = r3.u     // Catch:{ all -> 0x00aa }
            com.bumptech.glide.load.DataSource r1 = com.bumptech.glide.load.DataSource.MEMORY_CACHE     // Catch:{ all -> 0x00aa }
            r3.onResourceReady(r0, r1)     // Catch:{ all -> 0x00aa }
            monitor-exit(r3)
            return
        L_0x004f:
            int r0 = com.bumptech.glide.e.j.a.WAITING_FOR_SIZE$613311b9     // Catch:{ all -> 0x00aa }
            r3.x = r0     // Catch:{ all -> 0x00aa }
            int r0 = r3.m     // Catch:{ all -> 0x00aa }
            int r1 = r3.n     // Catch:{ all -> 0x00aa }
            boolean r0 = com.bumptech.glide.g.k.isValidDimensions(r0, r1)     // Catch:{ all -> 0x00aa }
            if (r0 == 0) goto L_0x0065
            int r0 = r3.m     // Catch:{ all -> 0x00aa }
            int r1 = r3.n     // Catch:{ all -> 0x00aa }
            r3.onSizeReady(r0, r1)     // Catch:{ all -> 0x00aa }
            goto L_0x006a
        L_0x0065:
            com.bumptech.glide.e.a.i<R> r0 = r3.p     // Catch:{ all -> 0x00aa }
            r0.getSize(r3)     // Catch:{ all -> 0x00aa }
        L_0x006a:
            int r0 = r3.x     // Catch:{ all -> 0x00aa }
            int r1 = com.bumptech.glide.e.j.a.RUNNING$613311b9     // Catch:{ all -> 0x00aa }
            if (r0 == r1) goto L_0x0076
            int r0 = r3.x     // Catch:{ all -> 0x00aa }
            int r1 = com.bumptech.glide.e.j.a.WAITING_FOR_SIZE$613311b9     // Catch:{ all -> 0x00aa }
            if (r0 != r1) goto L_0x0085
        L_0x0076:
            boolean r0 = r3.e()     // Catch:{ all -> 0x00aa }
            if (r0 == 0) goto L_0x0085
            com.bumptech.glide.e.a.i<R> r0 = r3.p     // Catch:{ all -> 0x00aa }
            android.graphics.drawable.Drawable r1 = r3.b()     // Catch:{ all -> 0x00aa }
            r0.onLoadStarted(r1)     // Catch:{ all -> 0x00aa }
        L_0x0085:
            boolean r0 = c     // Catch:{ all -> 0x00aa }
            if (r0 == 0) goto L_0x00a0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x00aa }
            java.lang.String r1 = "finished run method in "
            r0.<init>(r1)     // Catch:{ all -> 0x00aa }
            long r1 = r3.w     // Catch:{ all -> 0x00aa }
            double r1 = com.bumptech.glide.g.f.getElapsedMillis(r1)     // Catch:{ all -> 0x00aa }
            r0.append(r1)     // Catch:{ all -> 0x00aa }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x00aa }
            r3.a((java.lang.String) r0)     // Catch:{ all -> 0x00aa }
        L_0x00a0:
            monitor-exit(r3)
            return
        L_0x00a2:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch:{ all -> 0x00aa }
            java.lang.String r1 = "Cannot restart a running request"
            r0.<init>(r1)     // Catch:{ all -> 0x00aa }
            throw r0     // Catch:{ all -> 0x00aa }
        L_0x00aa:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.j.begin():void");
    }

    private void a() {
        if (this.f2048b) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0045  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void clear() {
        /*
            r2 = this;
            monitor-enter(r2)
            r2.a()     // Catch:{ all -> 0x0054 }
            com.bumptech.glide.g.a.c r0 = r2.e     // Catch:{ all -> 0x0054 }
            r0.throwIfRecycled()     // Catch:{ all -> 0x0054 }
            int r0 = r2.x     // Catch:{ all -> 0x0054 }
            int r1 = com.bumptech.glide.e.j.a.CLEARED$613311b9     // Catch:{ all -> 0x0054 }
            if (r0 != r1) goto L_0x0011
            monitor-exit(r2)
            return
        L_0x0011:
            r2.a()     // Catch:{ all -> 0x0054 }
            com.bumptech.glide.g.a.c r0 = r2.e     // Catch:{ all -> 0x0054 }
            r0.throwIfRecycled()     // Catch:{ all -> 0x0054 }
            com.bumptech.glide.e.a.i<R> r0 = r2.p     // Catch:{ all -> 0x0054 }
            r0.removeCallback(r2)     // Catch:{ all -> 0x0054 }
            com.bumptech.glide.load.b.k$d r0 = r2.v     // Catch:{ all -> 0x0054 }
            if (r0 == 0) goto L_0x002a
            com.bumptech.glide.load.b.k$d r0 = r2.v     // Catch:{ all -> 0x0054 }
            r0.cancel()     // Catch:{ all -> 0x0054 }
            r0 = 0
            r2.v = r0     // Catch:{ all -> 0x0054 }
        L_0x002a:
            com.bumptech.glide.load.b.v<R> r0 = r2.u     // Catch:{ all -> 0x0054 }
            if (r0 == 0) goto L_0x0033
            com.bumptech.glide.load.b.v<R> r0 = r2.u     // Catch:{ all -> 0x0054 }
            r2.a((com.bumptech.glide.load.b.v<?>) r0)     // Catch:{ all -> 0x0054 }
        L_0x0033:
            com.bumptech.glide.e.e r0 = r2.g     // Catch:{ all -> 0x0054 }
            if (r0 == 0) goto L_0x0042
            com.bumptech.glide.e.e r0 = r2.g     // Catch:{ all -> 0x0054 }
            boolean r0 = r0.canNotifyCleared(r2)     // Catch:{ all -> 0x0054 }
            if (r0 == 0) goto L_0x0040
            goto L_0x0042
        L_0x0040:
            r0 = 0
            goto L_0x0043
        L_0x0042:
            r0 = 1
        L_0x0043:
            if (r0 == 0) goto L_0x004e
            com.bumptech.glide.e.a.i<R> r0 = r2.p     // Catch:{ all -> 0x0054 }
            android.graphics.drawable.Drawable r1 = r2.b()     // Catch:{ all -> 0x0054 }
            r0.onLoadCleared(r1)     // Catch:{ all -> 0x0054 }
        L_0x004e:
            int r0 = com.bumptech.glide.e.j.a.CLEARED$613311b9     // Catch:{ all -> 0x0054 }
            r2.x = r0     // Catch:{ all -> 0x0054 }
            monitor-exit(r2)
            return
        L_0x0054:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.j.clear():void");
    }

    private void a(v<?> vVar) {
        this.r.release(vVar);
        this.u = null;
    }

    public final synchronized boolean isRunning() {
        return this.x == a.RUNNING$613311b9 || this.x == a.WAITING_FOR_SIZE$613311b9;
    }

    public final synchronized boolean isComplete() {
        return this.x == a.COMPLETE$613311b9;
    }

    public final synchronized boolean isResourceSet() {
        return isComplete();
    }

    public final synchronized boolean isCleared() {
        return this.x == a.CLEARED$613311b9;
    }

    public final synchronized boolean isFailed() {
        return this.x == a.FAILED$613311b9;
    }

    private Drawable b() {
        if (this.z == null) {
            this.z = this.l.getPlaceholderDrawable();
            if (this.z == null && this.l.getPlaceholderId() > 0) {
                this.z = a(this.l.getPlaceholderId());
            }
        }
        return this.z;
    }

    private Drawable c() {
        if (this.A == null) {
            this.A = this.l.getFallbackDrawable();
            if (this.A == null && this.l.getFallbackId() > 0) {
                this.A = a(this.l.getFallbackId());
            }
        }
        return this.A;
    }

    private Drawable a(int i2) {
        return com.bumptech.glide.load.resource.b.a.getDrawable((Context) this.i, i2, this.l.getTheme() != null ? this.l.getTheme() : this.h.getTheme());
    }

    private synchronized void d() {
        if (e()) {
            Drawable drawable = null;
            if (this.j == null) {
                drawable = c();
            }
            if (drawable == null) {
                if (this.y == null) {
                    this.y = this.l.getErrorPlaceholder();
                    if (this.y == null && this.l.getErrorId() > 0) {
                        this.y = a(this.l.getErrorId());
                    }
                }
                drawable = this.y;
            }
            if (drawable == null) {
                drawable = b();
            }
            this.p.onLoadFailed(drawable);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00e5, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void onSizeReady(int r22, int r23) {
        /*
            r21 = this;
            r15 = r21
            monitor-enter(r21)
            com.bumptech.glide.g.a.c r0 = r15.e     // Catch:{ all -> 0x00ec }
            r0.throwIfRecycled()     // Catch:{ all -> 0x00ec }
            boolean r0 = c     // Catch:{ all -> 0x00ec }
            if (r0 == 0) goto L_0x0023
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ec }
            java.lang.String r1 = "Got onSizeReady in "
            r0.<init>(r1)     // Catch:{ all -> 0x00ec }
            long r1 = r15.w     // Catch:{ all -> 0x00ec }
            double r1 = com.bumptech.glide.g.f.getElapsedMillis(r1)     // Catch:{ all -> 0x00ec }
            r0.append(r1)     // Catch:{ all -> 0x00ec }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x00ec }
            r15.a((java.lang.String) r0)     // Catch:{ all -> 0x00ec }
        L_0x0023:
            int r0 = r15.x     // Catch:{ all -> 0x00ec }
            int r1 = com.bumptech.glide.e.j.a.WAITING_FOR_SIZE$613311b9     // Catch:{ all -> 0x00ec }
            if (r0 == r1) goto L_0x002b
            monitor-exit(r21)
            return
        L_0x002b:
            int r0 = com.bumptech.glide.e.j.a.RUNNING$613311b9     // Catch:{ all -> 0x00ec }
            r15.x = r0     // Catch:{ all -> 0x00ec }
            com.bumptech.glide.e.a<?> r0 = r15.l     // Catch:{ all -> 0x00ec }
            float r0 = r0.getSizeMultiplier()     // Catch:{ all -> 0x00ec }
            r1 = r22
            int r1 = a((int) r1, (float) r0)     // Catch:{ all -> 0x00ec }
            r15.B = r1     // Catch:{ all -> 0x00ec }
            r1 = r23
            int r0 = a((int) r1, (float) r0)     // Catch:{ all -> 0x00ec }
            r15.C = r0     // Catch:{ all -> 0x00ec }
            boolean r0 = c     // Catch:{ all -> 0x00ec }
            if (r0 == 0) goto L_0x0060
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ec }
            java.lang.String r1 = "finished setup for calling load in "
            r0.<init>(r1)     // Catch:{ all -> 0x00ec }
            long r1 = r15.w     // Catch:{ all -> 0x00ec }
            double r1 = com.bumptech.glide.g.f.getElapsedMillis(r1)     // Catch:{ all -> 0x00ec }
            r0.append(r1)     // Catch:{ all -> 0x00ec }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x00ec }
            r15.a((java.lang.String) r0)     // Catch:{ all -> 0x00ec }
        L_0x0060:
            com.bumptech.glide.load.b.k r1 = r15.r     // Catch:{ all -> 0x00ec }
            com.bumptech.glide.e r2 = r15.i     // Catch:{ all -> 0x00ec }
            java.lang.Object r3 = r15.j     // Catch:{ all -> 0x00ec }
            com.bumptech.glide.e.a<?> r0 = r15.l     // Catch:{ all -> 0x00ec }
            com.bumptech.glide.load.d r4 = r0.getSignature()     // Catch:{ all -> 0x00ec }
            int r5 = r15.B     // Catch:{ all -> 0x00ec }
            int r6 = r15.C     // Catch:{ all -> 0x00ec }
            com.bumptech.glide.e.a<?> r0 = r15.l     // Catch:{ all -> 0x00ec }
            java.lang.Class r7 = r0.getResourceClass()     // Catch:{ all -> 0x00ec }
            java.lang.Class<R> r8 = r15.k     // Catch:{ all -> 0x00ec }
            com.bumptech.glide.Priority r9 = r15.o     // Catch:{ all -> 0x00ec }
            com.bumptech.glide.e.a<?> r0 = r15.l     // Catch:{ all -> 0x00ec }
            com.bumptech.glide.load.b.j r10 = r0.getDiskCacheStrategy()     // Catch:{ all -> 0x00ec }
            com.bumptech.glide.e.a<?> r0 = r15.l     // Catch:{ all -> 0x00ec }
            java.util.Map r11 = r0.getTransformations()     // Catch:{ all -> 0x00ec }
            com.bumptech.glide.e.a<?> r0 = r15.l     // Catch:{ all -> 0x00ec }
            boolean r12 = r0.isTransformationRequired()     // Catch:{ all -> 0x00ec }
            com.bumptech.glide.e.a<?> r0 = r15.l     // Catch:{ all -> 0x00ec }
            boolean r13 = r0.f2020b     // Catch:{ all -> 0x00ec }
            com.bumptech.glide.e.a<?> r0 = r15.l     // Catch:{ all -> 0x00ec }
            com.bumptech.glide.load.g r14 = r0.getOptions()     // Catch:{ all -> 0x00ec }
            com.bumptech.glide.e.a<?> r0 = r15.l     // Catch:{ all -> 0x00ec }
            boolean r0 = r0.isMemoryCacheable()     // Catch:{ all -> 0x00ec }
            r22 = r0
            com.bumptech.glide.e.a<?> r0 = r15.l     // Catch:{ all -> 0x00ec }
            boolean r16 = r0.getUseUnlimitedSourceGeneratorsPool()     // Catch:{ all -> 0x00ec }
            com.bumptech.glide.e.a<?> r0 = r15.l     // Catch:{ all -> 0x00ec }
            boolean r17 = r0.getUseAnimationPool()     // Catch:{ all -> 0x00ec }
            com.bumptech.glide.e.a<?> r0 = r15.l     // Catch:{ all -> 0x00ec }
            boolean r18 = r0.getOnlyRetrieveFromCache()     // Catch:{ all -> 0x00ec }
            java.util.concurrent.Executor r0 = r15.t     // Catch:{ all -> 0x00ec }
            r15 = r22
            r19 = r21
            r20 = r0
            com.bumptech.glide.load.b.k$d r0 = r1.load(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20)     // Catch:{ all -> 0x00e8 }
            r1 = r21
            r1.v = r0     // Catch:{ all -> 0x00e6 }
            int r0 = r1.x     // Catch:{ all -> 0x00e6 }
            int r2 = com.bumptech.glide.e.j.a.RUNNING$613311b9     // Catch:{ all -> 0x00e6 }
            if (r0 == r2) goto L_0x00c9
            r0 = 0
            r1.v = r0     // Catch:{ all -> 0x00e6 }
        L_0x00c9:
            boolean r0 = c     // Catch:{ all -> 0x00e6 }
            if (r0 == 0) goto L_0x00e4
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x00e6 }
            java.lang.String r2 = "finished onSizeReady in "
            r0.<init>(r2)     // Catch:{ all -> 0x00e6 }
            long r2 = r1.w     // Catch:{ all -> 0x00e6 }
            double r2 = com.bumptech.glide.g.f.getElapsedMillis(r2)     // Catch:{ all -> 0x00e6 }
            r0.append(r2)     // Catch:{ all -> 0x00e6 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x00e6 }
            r1.a((java.lang.String) r0)     // Catch:{ all -> 0x00e6 }
        L_0x00e4:
            monitor-exit(r21)
            return
        L_0x00e6:
            r0 = move-exception
            goto L_0x00ee
        L_0x00e8:
            r0 = move-exception
            r1 = r21
            goto L_0x00ee
        L_0x00ec:
            r0 = move-exception
            r1 = r15
        L_0x00ee:
            monitor-exit(r21)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.j.onSizeReady(int, int):void");
    }

    private static int a(int i2, float f2) {
        return i2 == Integer.MIN_VALUE ? i2 : Math.round(f2 * ((float) i2));
    }

    private boolean e() {
        e eVar = this.g;
        return eVar == null || eVar.canNotifyStatusChanged(this);
    }

    private boolean f() {
        e eVar = this.g;
        return eVar == null || !eVar.isAnyResourceSet();
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x004f  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0058 A[SYNTHETIC, Splitter:B:24:0x0058] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void onResourceReady(com.bumptech.glide.load.b.v<?> r4, com.bumptech.glide.load.DataSource r5) {
        /*
            r3 = this;
            monitor-enter(r3)
            com.bumptech.glide.g.a.c r0 = r3.e     // Catch:{ all -> 0x00aa }
            r0.throwIfRecycled()     // Catch:{ all -> 0x00aa }
            r0 = 0
            r3.v = r0     // Catch:{ all -> 0x00aa }
            if (r4 != 0) goto L_0x002a
            com.bumptech.glide.load.b.q r4 = new com.bumptech.glide.load.b.q     // Catch:{ all -> 0x00aa }
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ all -> 0x00aa }
            java.lang.String r0 = "Expected to receive a Resource<R> with an object of "
            r5.<init>(r0)     // Catch:{ all -> 0x00aa }
            java.lang.Class<R> r0 = r3.k     // Catch:{ all -> 0x00aa }
            r5.append(r0)     // Catch:{ all -> 0x00aa }
            java.lang.String r0 = " inside, but instead got null."
            r5.append(r0)     // Catch:{ all -> 0x00aa }
            java.lang.String r5 = r5.toString()     // Catch:{ all -> 0x00aa }
            r4.<init>(r5)     // Catch:{ all -> 0x00aa }
            r3.onLoadFailed(r4)     // Catch:{ all -> 0x00aa }
            monitor-exit(r3)
            return
        L_0x002a:
            java.lang.Object r0 = r4.get()     // Catch:{ all -> 0x00aa }
            if (r0 == 0) goto L_0x005d
            java.lang.Class<R> r1 = r3.k     // Catch:{ all -> 0x00aa }
            java.lang.Class r2 = r0.getClass()     // Catch:{ all -> 0x00aa }
            boolean r1 = r1.isAssignableFrom(r2)     // Catch:{ all -> 0x00aa }
            if (r1 != 0) goto L_0x003d
            goto L_0x005d
        L_0x003d:
            com.bumptech.glide.e.e r1 = r3.g     // Catch:{ all -> 0x00aa }
            if (r1 == 0) goto L_0x004c
            com.bumptech.glide.e.e r1 = r3.g     // Catch:{ all -> 0x00aa }
            boolean r1 = r1.canSetImage(r3)     // Catch:{ all -> 0x00aa }
            if (r1 == 0) goto L_0x004a
            goto L_0x004c
        L_0x004a:
            r1 = 0
            goto L_0x004d
        L_0x004c:
            r1 = 1
        L_0x004d:
            if (r1 != 0) goto L_0x0058
            r3.a((com.bumptech.glide.load.b.v<?>) r4)     // Catch:{ all -> 0x00aa }
            int r4 = com.bumptech.glide.e.j.a.COMPLETE$613311b9     // Catch:{ all -> 0x00aa }
            r3.x = r4     // Catch:{ all -> 0x00aa }
            monitor-exit(r3)
            return
        L_0x0058:
            r3.a(r4, r0, r5)     // Catch:{ all -> 0x00aa }
            monitor-exit(r3)
            return
        L_0x005d:
            r3.a((com.bumptech.glide.load.b.v<?>) r4)     // Catch:{ all -> 0x00aa }
            com.bumptech.glide.load.b.q r5 = new com.bumptech.glide.load.b.q     // Catch:{ all -> 0x00aa }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x00aa }
            java.lang.String r2 = "Expected to receive an object of "
            r1.<init>(r2)     // Catch:{ all -> 0x00aa }
            java.lang.Class<R> r2 = r3.k     // Catch:{ all -> 0x00aa }
            r1.append(r2)     // Catch:{ all -> 0x00aa }
            java.lang.String r2 = " but instead got "
            r1.append(r2)     // Catch:{ all -> 0x00aa }
            if (r0 == 0) goto L_0x007a
            java.lang.Class r2 = r0.getClass()     // Catch:{ all -> 0x00aa }
            goto L_0x007c
        L_0x007a:
            java.lang.String r2 = ""
        L_0x007c:
            r1.append(r2)     // Catch:{ all -> 0x00aa }
            java.lang.String r2 = "{"
            r1.append(r2)     // Catch:{ all -> 0x00aa }
            r1.append(r0)     // Catch:{ all -> 0x00aa }
            java.lang.String r2 = "} inside Resource{"
            r1.append(r2)     // Catch:{ all -> 0x00aa }
            r1.append(r4)     // Catch:{ all -> 0x00aa }
            java.lang.String r4 = "}."
            r1.append(r4)     // Catch:{ all -> 0x00aa }
            if (r0 == 0) goto L_0x0099
            java.lang.String r4 = ""
            goto L_0x009b
        L_0x0099:
            java.lang.String r4 = " To indicate failure return a null Resource object, rather than a Resource object containing null data."
        L_0x009b:
            r1.append(r4)     // Catch:{ all -> 0x00aa }
            java.lang.String r4 = r1.toString()     // Catch:{ all -> 0x00aa }
            r5.<init>(r4)     // Catch:{ all -> 0x00aa }
            r3.onLoadFailed(r5)     // Catch:{ all -> 0x00aa }
            monitor-exit(r3)
            return
        L_0x00aa:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.j.onResourceReady(com.bumptech.glide.load.b.v, com.bumptech.glide.load.DataSource):void");
    }

    /* JADX INFO: finally extract failed */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x00a0 A[Catch:{ all -> 0x00b8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00b1 A[Catch:{ all -> 0x00b8 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void a(com.bumptech.glide.load.b.v<R> r11, R r12, com.bumptech.glide.load.DataSource r13) {
        /*
            r10 = this;
            monitor-enter(r10)
            boolean r6 = r10.f()     // Catch:{ all -> 0x00bc }
            int r0 = com.bumptech.glide.e.j.a.COMPLETE$613311b9     // Catch:{ all -> 0x00bc }
            r10.x = r0     // Catch:{ all -> 0x00bc }
            r10.u = r11     // Catch:{ all -> 0x00bc }
            com.bumptech.glide.e r11 = r10.i     // Catch:{ all -> 0x00bc }
            int r11 = r11.getLogLevel()     // Catch:{ all -> 0x00bc }
            r0 = 3
            if (r11 > r0) goto L_0x005f
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch:{ all -> 0x00bc }
            java.lang.String r0 = "Finished loading "
            r11.<init>(r0)     // Catch:{ all -> 0x00bc }
            java.lang.Class r0 = r12.getClass()     // Catch:{ all -> 0x00bc }
            java.lang.String r0 = r0.getSimpleName()     // Catch:{ all -> 0x00bc }
            r11.append(r0)     // Catch:{ all -> 0x00bc }
            java.lang.String r0 = " from "
            r11.append(r0)     // Catch:{ all -> 0x00bc }
            r11.append(r13)     // Catch:{ all -> 0x00bc }
            java.lang.String r0 = " for "
            r11.append(r0)     // Catch:{ all -> 0x00bc }
            java.lang.Object r0 = r10.j     // Catch:{ all -> 0x00bc }
            r11.append(r0)     // Catch:{ all -> 0x00bc }
            java.lang.String r0 = " with size ["
            r11.append(r0)     // Catch:{ all -> 0x00bc }
            int r0 = r10.B     // Catch:{ all -> 0x00bc }
            r11.append(r0)     // Catch:{ all -> 0x00bc }
            java.lang.String r0 = "x"
            r11.append(r0)     // Catch:{ all -> 0x00bc }
            int r0 = r10.C     // Catch:{ all -> 0x00bc }
            r11.append(r0)     // Catch:{ all -> 0x00bc }
            java.lang.String r0 = "] in "
            r11.append(r0)     // Catch:{ all -> 0x00bc }
            long r0 = r10.w     // Catch:{ all -> 0x00bc }
            double r0 = com.bumptech.glide.g.f.getElapsedMillis(r0)     // Catch:{ all -> 0x00bc }
            r11.append(r0)     // Catch:{ all -> 0x00bc }
            java.lang.String r0 = " ms"
            r11.append(r0)     // Catch:{ all -> 0x00bc }
        L_0x005f:
            r11 = 1
            r10.f2048b = r11     // Catch:{ all -> 0x00bc }
            r7 = 0
            java.util.List<com.bumptech.glide.e.g<R>> r0 = r10.q     // Catch:{ all -> 0x00b8 }
            if (r0 == 0) goto L_0x0087
            java.util.List<com.bumptech.glide.e.g<R>> r0 = r10.q     // Catch:{ all -> 0x00b8 }
            java.util.Iterator r8 = r0.iterator()     // Catch:{ all -> 0x00b8 }
            r9 = 0
        L_0x006e:
            boolean r0 = r8.hasNext()     // Catch:{ all -> 0x00b8 }
            if (r0 == 0) goto L_0x0088
            java.lang.Object r0 = r8.next()     // Catch:{ all -> 0x00b8 }
            com.bumptech.glide.e.g r0 = (com.bumptech.glide.e.g) r0     // Catch:{ all -> 0x00b8 }
            java.lang.Object r2 = r10.j     // Catch:{ all -> 0x00b8 }
            com.bumptech.glide.e.a.i<R> r3 = r10.p     // Catch:{ all -> 0x00b8 }
            r1 = r12
            r4 = r13
            r5 = r6
            boolean r0 = r0.onResourceReady(r1, r2, r3, r4, r5)     // Catch:{ all -> 0x00b8 }
            r9 = r9 | r0
            goto L_0x006e
        L_0x0087:
            r9 = 0
        L_0x0088:
            com.bumptech.glide.e.g<R> r0 = r10.f     // Catch:{ all -> 0x00b8 }
            if (r0 == 0) goto L_0x009c
            com.bumptech.glide.e.g<R> r0 = r10.f     // Catch:{ all -> 0x00b8 }
            java.lang.Object r2 = r10.j     // Catch:{ all -> 0x00b8 }
            com.bumptech.glide.e.a.i<R> r3 = r10.p     // Catch:{ all -> 0x00b8 }
            r1 = r12
            r4 = r13
            r5 = r6
            boolean r0 = r0.onResourceReady(r1, r2, r3, r4, r5)     // Catch:{ all -> 0x00b8 }
            if (r0 == 0) goto L_0x009c
            goto L_0x009d
        L_0x009c:
            r11 = 0
        L_0x009d:
            r11 = r11 | r9
            if (r11 != 0) goto L_0x00ab
            com.bumptech.glide.e.b.c<? super R> r11 = r10.s     // Catch:{ all -> 0x00b8 }
            com.bumptech.glide.e.b.b r11 = r11.build(r13, r6)     // Catch:{ all -> 0x00b8 }
            com.bumptech.glide.e.a.i<R> r13 = r10.p     // Catch:{ all -> 0x00b8 }
            r13.onResourceReady(r12, r11)     // Catch:{ all -> 0x00b8 }
        L_0x00ab:
            r10.f2048b = r7     // Catch:{ all -> 0x00bc }
            com.bumptech.glide.e.e r11 = r10.g     // Catch:{ all -> 0x00bc }
            if (r11 == 0) goto L_0x00b6
            com.bumptech.glide.e.e r11 = r10.g     // Catch:{ all -> 0x00bc }
            r11.onRequestSuccess(r10)     // Catch:{ all -> 0x00bc }
        L_0x00b6:
            monitor-exit(r10)
            return
        L_0x00b8:
            r11 = move-exception
            r10.f2048b = r7     // Catch:{ all -> 0x00bc }
            throw r11     // Catch:{ all -> 0x00bc }
        L_0x00bc:
            r11 = move-exception
            monitor-exit(r10)
            goto L_0x00c0
        L_0x00bf:
            throw r11
        L_0x00c0:
            goto L_0x00bf
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.j.a(com.bumptech.glide.load.b.v, java.lang.Object, com.bumptech.glide.load.DataSource):void");
    }

    public final synchronized void onLoadFailed(q qVar) {
        a(qVar, 5);
    }

    /* JADX INFO: finally extract failed */
    private synchronized void a(q qVar, int i2) {
        boolean z2;
        this.e.throwIfRecycled();
        qVar.setOrigin(this.D);
        int logLevel = this.i.getLogLevel();
        if (logLevel <= i2) {
            StringBuilder sb = new StringBuilder("Load failed for ");
            sb.append(this.j);
            sb.append(" with size [");
            sb.append(this.B);
            sb.append("x");
            sb.append(this.C);
            sb.append("]");
            if (logLevel <= 4) {
                qVar.logRootCauses("Glide");
            }
        }
        this.v = null;
        this.x = a.FAILED$613311b9;
        boolean z3 = true;
        this.f2048b = true;
        try {
            if (this.q != null) {
                z2 = false;
                for (g<R> onLoadFailed : this.q) {
                    z2 |= onLoadFailed.onLoadFailed(qVar, this.j, this.p, f());
                }
            } else {
                z2 = false;
            }
            if (this.f == null || !this.f.onLoadFailed(qVar, this.j, this.p, f())) {
                z3 = false;
            }
            if (!z2 && !z3) {
                d();
            }
            this.f2048b = false;
            if (this.g != null) {
                this.g.onRequestFailed(this);
            }
        } catch (Throwable th) {
            this.f2048b = false;
            throw th;
        }
    }

    public final synchronized boolean isEquivalentTo(d dVar) {
        boolean z2 = false;
        if (!(dVar instanceof j)) {
            return false;
        }
        j jVar = (j) dVar;
        synchronized (jVar) {
            if (this.m == jVar.m && this.n == jVar.n && com.bumptech.glide.g.k.bothModelsNullEquivalentOrEquals(this.j, jVar.j) && this.k.equals(jVar.k) && this.l.equals(jVar.l) && this.o == jVar.o && a((j<?>) jVar)) {
                z2 = true;
            }
        }
        return z2;
    }

    private synchronized boolean a(j<?> jVar) {
        boolean z2;
        synchronized (jVar) {
            z2 = false;
            if ((this.q == null ? 0 : this.q.size()) == (jVar.q == null ? 0 : jVar.q.size())) {
                z2 = true;
            }
        }
        return z2;
    }

    private void a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" this: ");
        sb.append(this.d);
    }
}
