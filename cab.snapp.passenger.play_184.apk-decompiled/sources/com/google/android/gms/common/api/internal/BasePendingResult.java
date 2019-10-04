package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.p;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.r;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public abstract class BasePendingResult<R extends m> extends h<R> {
    static final ThreadLocal<Boolean> c = new da();

    /* renamed from: a  reason: collision with root package name */
    private final Object f2745a;

    /* renamed from: b  reason: collision with root package name */
    private a<R> f2746b;
    private WeakReference<f> d;
    private final CountDownLatch e;
    private final ArrayList<h.a> f;
    private n<? super R> g;
    private final AtomicReference<ck> h;
    /* access modifiers changed from: private */
    public R i;
    private Status j;
    private volatile boolean k;
    private boolean l;
    private boolean m;
    private b mResultGuardian;
    private r n;
    private volatile ce<R> o;
    private boolean p;

    public static class a<R extends m> extends Handler {
        public a() {
            this(Looper.getMainLooper());
        }

        public a(Looper looper) {
            super(looper);
        }

        public final void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                Pair pair = (Pair) message.obj;
                n nVar = (n) pair.first;
                m mVar = (m) pair.second;
                try {
                    nVar.onResult(mVar);
                } catch (RuntimeException e) {
                    BasePendingResult.zzd(mVar);
                    throw e;
                }
            } else if (i != 2) {
                int i2 = message.what;
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i2);
                Log.wtf("BasePendingResult", sb.toString(), new Exception());
            } else {
                ((BasePendingResult) message.obj).zzv(Status.zzfnl);
            }
        }

        public final void zza(n<? super R> nVar, R r) {
            sendMessage(obtainMessage(1, new Pair(nVar, r)));
        }
    }

    final class b {
        private b() {
        }

        /* synthetic */ b(BasePendingResult basePendingResult, byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public final void finalize() throws Throwable {
            BasePendingResult.zzd(BasePendingResult.this.i);
            super.finalize();
        }
    }

    @Deprecated
    BasePendingResult() {
        this.f2745a = new Object();
        this.e = new CountDownLatch(1);
        this.f = new ArrayList<>();
        this.h = new AtomicReference<>();
        this.p = false;
        this.f2746b = new a<>(Looper.getMainLooper());
        this.d = new WeakReference<>(null);
    }

    @Deprecated
    protected BasePendingResult(Looper looper) {
        this.f2745a = new Object();
        this.e = new CountDownLatch(1);
        this.f = new ArrayList<>();
        this.h = new AtomicReference<>();
        this.p = false;
        this.f2746b = new a<>(looper);
        this.d = new WeakReference<>(null);
    }

    protected BasePendingResult(f fVar) {
        this.f2745a = new Object();
        this.e = new CountDownLatch(1);
        this.f = new ArrayList<>();
        this.h = new AtomicReference<>();
        this.p = false;
        this.f2746b = new a<>(fVar != null ? fVar.getLooper() : Looper.getMainLooper());
        this.d = new WeakReference<>(fVar);
    }

    private final R a() {
        R r;
        synchronized (this.f2745a) {
            ap.zza(!this.k, (Object) "Result has already been consumed.");
            ap.zza(isReady(), (Object) "Result is not ready.");
            r = this.i;
            this.i = null;
            this.g = null;
            this.k = true;
        }
        ck andSet = this.h.getAndSet(null);
        if (andSet != null) {
            andSet.zzc(this);
        }
        return r;
    }

    private final void a(R r) {
        this.i = r;
        this.n = null;
        this.e.countDown();
        this.j = this.i.getStatus();
        int i2 = 0;
        if (this.l) {
            this.g = null;
        } else if (this.g != null) {
            this.f2746b.removeMessages(2);
            this.f2746b.zza(this.g, a());
        } else if (this.i instanceof j) {
            this.mResultGuardian = new b(this, (byte) 0);
        }
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((h.a) obj).zzr(this.j);
        }
        this.f.clear();
    }

    public static void zzd(m mVar) {
        if (mVar instanceof j) {
            try {
                ((j) mVar).release();
            } catch (RuntimeException unused) {
                String valueOf = String.valueOf(mVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
            }
        }
    }

    public final R await() {
        ap.zzgn("await must not be called on the UI thread");
        boolean z = true;
        ap.zza(!this.k, (Object) "Result has already been consumed");
        if (this.o != null) {
            z = false;
        }
        ap.zza(z, (Object) "Cannot await if then() has been called.");
        try {
            this.e.await();
        } catch (InterruptedException unused) {
            zzv(Status.zzfnj);
        }
        ap.zza(isReady(), (Object) "Result is not ready.");
        return a();
    }

    public final R await(long j2, TimeUnit timeUnit) {
        if (j2 > 0) {
            ap.zzgn("await must not be called on the UI thread when time is greater than zero.");
        }
        boolean z = true;
        ap.zza(!this.k, (Object) "Result has already been consumed.");
        if (this.o != null) {
            z = false;
        }
        ap.zza(z, (Object) "Cannot await if then() has been called.");
        try {
            if (!this.e.await(j2, timeUnit)) {
                zzv(Status.zzfnl);
            }
        } catch (InterruptedException unused) {
            zzv(Status.zzfnj);
        }
        ap.zza(isReady(), (Object) "Result is not ready.");
        return a();
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(6:8|(2:10|11)|12|13|14|15) */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0029, code lost:
        return;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:12:0x0015 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void cancel() {
        /*
            r2 = this;
            java.lang.Object r0 = r2.f2745a
            monitor-enter(r0)
            boolean r1 = r2.l     // Catch:{ all -> 0x002a }
            if (r1 != 0) goto L_0x0028
            boolean r1 = r2.k     // Catch:{ all -> 0x002a }
            if (r1 == 0) goto L_0x000c
            goto L_0x0028
        L_0x000c:
            com.google.android.gms.common.internal.r r1 = r2.n     // Catch:{ all -> 0x002a }
            if (r1 == 0) goto L_0x0015
            com.google.android.gms.common.internal.r r1 = r2.n     // Catch:{ RemoteException -> 0x0015 }
            r1.cancel()     // Catch:{ RemoteException -> 0x0015 }
        L_0x0015:
            R r1 = r2.i     // Catch:{ all -> 0x002a }
            zzd(r1)     // Catch:{ all -> 0x002a }
            r1 = 1
            r2.l = r1     // Catch:{ all -> 0x002a }
            com.google.android.gms.common.api.Status r1 = com.google.android.gms.common.api.Status.zzfnm     // Catch:{ all -> 0x002a }
            com.google.android.gms.common.api.m r1 = r2.zzb(r1)     // Catch:{ all -> 0x002a }
            r2.a(r1)     // Catch:{ all -> 0x002a }
            monitor-exit(r0)     // Catch:{ all -> 0x002a }
            return
        L_0x0028:
            monitor-exit(r0)     // Catch:{ all -> 0x002a }
            return
        L_0x002a:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x002a }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.BasePendingResult.cancel():void");
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this.f2745a) {
            z = this.l;
        }
        return z;
    }

    public final boolean isReady() {
        return this.e.getCount() == 0;
    }

    public final void setResult(R r) {
        synchronized (this.f2745a) {
            if (this.m || this.l) {
                zzd(r);
                return;
            }
            isReady();
            boolean z = true;
            ap.zza(!isReady(), (Object) "Results have already been set");
            if (this.k) {
                z = false;
            }
            ap.zza(z, (Object) "Result has already been consumed");
            a(r);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:25:0x003e, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setResultCallback(com.google.android.gms.common.api.n<? super R> r6) {
        /*
            r5 = this;
            java.lang.Object r0 = r5.f2745a
            monitor-enter(r0)
            if (r6 != 0) goto L_0x000a
            r6 = 0
            r5.g = r6     // Catch:{ all -> 0x003f }
            monitor-exit(r0)     // Catch:{ all -> 0x003f }
            return
        L_0x000a:
            boolean r1 = r5.k     // Catch:{ all -> 0x003f }
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L_0x0012
            r1 = 1
            goto L_0x0013
        L_0x0012:
            r1 = 0
        L_0x0013:
            java.lang.String r4 = "Result has already been consumed."
            com.google.android.gms.common.internal.ap.zza((boolean) r1, (java.lang.Object) r4)     // Catch:{ all -> 0x003f }
            com.google.android.gms.common.api.internal.ce<R> r1 = r5.o     // Catch:{ all -> 0x003f }
            if (r1 != 0) goto L_0x001d
            goto L_0x001e
        L_0x001d:
            r2 = 0
        L_0x001e:
            java.lang.String r1 = "Cannot set callbacks if then() has been called."
            com.google.android.gms.common.internal.ap.zza((boolean) r2, (java.lang.Object) r1)     // Catch:{ all -> 0x003f }
            boolean r1 = r5.isCanceled()     // Catch:{ all -> 0x003f }
            if (r1 == 0) goto L_0x002b
            monitor-exit(r0)     // Catch:{ all -> 0x003f }
            return
        L_0x002b:
            boolean r1 = r5.isReady()     // Catch:{ all -> 0x003f }
            if (r1 == 0) goto L_0x003b
            com.google.android.gms.common.api.internal.BasePendingResult$a<R> r1 = r5.f2746b     // Catch:{ all -> 0x003f }
            com.google.android.gms.common.api.m r2 = r5.a()     // Catch:{ all -> 0x003f }
            r1.zza(r6, r2)     // Catch:{ all -> 0x003f }
            goto L_0x003d
        L_0x003b:
            r5.g = r6     // Catch:{ all -> 0x003f }
        L_0x003d:
            monitor-exit(r0)     // Catch:{ all -> 0x003f }
            return
        L_0x003f:
            r6 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x003f }
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.BasePendingResult.setResultCallback(com.google.android.gms.common.api.n):void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:25:0x004c, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setResultCallback(com.google.android.gms.common.api.n<? super R> r6, long r7, java.util.concurrent.TimeUnit r9) {
        /*
            r5 = this;
            java.lang.Object r0 = r5.f2745a
            monitor-enter(r0)
            if (r6 != 0) goto L_0x000a
            r6 = 0
            r5.g = r6     // Catch:{ all -> 0x004d }
            monitor-exit(r0)     // Catch:{ all -> 0x004d }
            return
        L_0x000a:
            boolean r1 = r5.k     // Catch:{ all -> 0x004d }
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L_0x0012
            r1 = 1
            goto L_0x0013
        L_0x0012:
            r1 = 0
        L_0x0013:
            java.lang.String r4 = "Result has already been consumed."
            com.google.android.gms.common.internal.ap.zza((boolean) r1, (java.lang.Object) r4)     // Catch:{ all -> 0x004d }
            com.google.android.gms.common.api.internal.ce<R> r1 = r5.o     // Catch:{ all -> 0x004d }
            if (r1 != 0) goto L_0x001d
            goto L_0x001e
        L_0x001d:
            r2 = 0
        L_0x001e:
            java.lang.String r1 = "Cannot set callbacks if then() has been called."
            com.google.android.gms.common.internal.ap.zza((boolean) r2, (java.lang.Object) r1)     // Catch:{ all -> 0x004d }
            boolean r1 = r5.isCanceled()     // Catch:{ all -> 0x004d }
            if (r1 == 0) goto L_0x002b
            monitor-exit(r0)     // Catch:{ all -> 0x004d }
            return
        L_0x002b:
            boolean r1 = r5.isReady()     // Catch:{ all -> 0x004d }
            if (r1 == 0) goto L_0x003b
            com.google.android.gms.common.api.internal.BasePendingResult$a<R> r7 = r5.f2746b     // Catch:{ all -> 0x004d }
            com.google.android.gms.common.api.m r8 = r5.a()     // Catch:{ all -> 0x004d }
            r7.zza(r6, r8)     // Catch:{ all -> 0x004d }
            goto L_0x004b
        L_0x003b:
            r5.g = r6     // Catch:{ all -> 0x004d }
            com.google.android.gms.common.api.internal.BasePendingResult$a<R> r6 = r5.f2746b     // Catch:{ all -> 0x004d }
            long r7 = r9.toMillis(r7)     // Catch:{ all -> 0x004d }
            r9 = 2
            android.os.Message r9 = r6.obtainMessage(r9, r5)     // Catch:{ all -> 0x004d }
            r6.sendMessageDelayed(r9, r7)     // Catch:{ all -> 0x004d }
        L_0x004b:
            monitor-exit(r0)     // Catch:{ all -> 0x004d }
            return
        L_0x004d:
            r6 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x004d }
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.BasePendingResult.setResultCallback(com.google.android.gms.common.api.n, long, java.util.concurrent.TimeUnit):void");
    }

    public <S extends m> q<S> then(p<? super R, ? extends S> pVar) {
        q<S> then;
        ap.zza(!this.k, (Object) "Result has already been consumed.");
        synchronized (this.f2745a) {
            boolean z = false;
            ap.zza(this.o == null, (Object) "Cannot call then() twice.");
            ap.zza(this.g == null, (Object) "Cannot call then() if callbacks are set.");
            if (!this.l) {
                z = true;
            }
            ap.zza(z, (Object) "Cannot call then() if result was canceled.");
            this.p = true;
            this.o = new ce<>(this.d);
            then = this.o.then(pVar);
            if (isReady()) {
                this.f2746b.zza(this.o, a());
            } else {
                this.g = this.o;
            }
        }
        return then;
    }

    public final void zza(h.a aVar) {
        ap.checkArgument(aVar != null, "Callback cannot be null.");
        synchronized (this.f2745a) {
            if (isReady()) {
                aVar.zzr(this.j);
            } else {
                this.f.add(aVar);
            }
        }
    }

    public final void zza(ck ckVar) {
        this.h.set(ckVar);
    }

    public final Integer zzagv() {
        return null;
    }

    public final boolean zzahh() {
        boolean isCanceled;
        synchronized (this.f2745a) {
            if (((f) this.d.get()) == null || !this.p) {
                cancel();
            }
            isCanceled = isCanceled();
        }
        return isCanceled;
    }

    public final void zzahi() {
        this.p = this.p || c.get().booleanValue();
    }

    /* access modifiers changed from: protected */
    public abstract R zzb(Status status);

    public final void zzv(Status status) {
        synchronized (this.f2745a) {
            if (!isReady()) {
                setResult(zzb(status));
                this.m = true;
            }
        }
    }
}
