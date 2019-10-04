package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import c.e.a.b.d.a.a.J;
import c.e.a.b.d.a.a.U;
import c.e.a.b.d.a.d;
import c.e.a.b.d.a.e;
import c.e.a.b.d.a.f;
import c.e.a.b.d.a.g;
import c.e.a.b.d.a.h;
import c.e.a.b.d.d.C0790m;
import c.e.a.b.d.d.r;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

@KeepName
public abstract class BasePendingResult<R extends g> extends e<R> {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadLocal<Boolean> f12987a = new U();

    /* renamed from: b  reason: collision with root package name */
    public final Object f12988b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public final a<R> f12989c = new a<>(Looper.getMainLooper());

    /* renamed from: d  reason: collision with root package name */
    public final WeakReference<d> f12990d = new WeakReference<>(null);

    /* renamed from: e  reason: collision with root package name */
    public final CountDownLatch f12991e = new CountDownLatch(1);

    /* renamed from: f  reason: collision with root package name */
    public final ArrayList<e.a> f12992f = new ArrayList<>();

    /* renamed from: g  reason: collision with root package name */
    public h<? super R> f12993g;

    /* renamed from: h  reason: collision with root package name */
    public final AtomicReference<J> f12994h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    public R f12995i;

    /* renamed from: j  reason: collision with root package name */
    public Status f12996j;

    /* renamed from: k  reason: collision with root package name */
    public volatile boolean f12997k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f12998l;
    public boolean m;
    @KeepName
    public b mResultGuardian;
    public C0790m n;
    public boolean o = false;

    public static class a<R extends g> extends c.e.a.b.g.c.e {
        public a(Looper looper) {
            super(looper);
        }

        public final void a(h<? super R> hVar, R r) {
            sendMessage(obtainMessage(1, new Pair(hVar, r)));
        }

        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                Pair pair = (Pair) message.obj;
                h hVar = (h) pair.first;
                g gVar = (g) pair.second;
                try {
                    hVar.a(gVar);
                } catch (RuntimeException e2) {
                    BasePendingResult.c(gVar);
                    throw e2;
                }
            } else if (i2 != 2) {
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i2);
                Log.wtf("BasePendingResult", sb.toString(), new Exception());
            } else {
                ((BasePendingResult) message.obj).b(Status.f12979d);
            }
        }
    }

    private final class b {
        public b() {
        }

        public final void finalize() {
            BasePendingResult.c(BasePendingResult.this.f12995i);
            super.finalize();
        }

        public /* synthetic */ b(BasePendingResult basePendingResult, U u) {
            this();
        }
    }

    public static void c(g gVar) {
        if (gVar instanceof f) {
            try {
                ((f) gVar).a();
            } catch (RuntimeException e2) {
                String valueOf = String.valueOf(gVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("BasePendingResult", sb.toString(), e2);
            }
        }
    }

    public abstract R a(Status status);

    public final void a(R r) {
        synchronized (this.f12988b) {
            if (this.m || this.f12998l) {
                c(r);
                return;
            }
            b();
            boolean z = true;
            r.b(!b(), "Results have already been set");
            if (this.f12997k) {
                z = false;
            }
            r.b(z, "Result has already been consumed");
            b(r);
        }
    }

    public final boolean b() {
        return this.f12991e.getCount() == 0;
    }

    public final void b(Status status) {
        synchronized (this.f12988b) {
            if (!b()) {
                a(a(status));
                this.m = true;
            }
        }
    }

    public final void b(R r) {
        this.f12995i = r;
        this.n = null;
        this.f12991e.countDown();
        this.f12996j = this.f12995i.w();
        if (this.f12998l) {
            this.f12993g = null;
        } else if (this.f12993g != null) {
            this.f12989c.removeMessages(2);
            this.f12989c.a(this.f12993g, a());
        } else if (this.f12995i instanceof f) {
            this.mResultGuardian = new b(this, null);
        }
        ArrayList<e.a> arrayList = this.f12992f;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            e.a aVar = arrayList.get(i2);
            i2++;
            aVar.a(this.f12996j);
        }
        this.f12992f.clear();
    }

    public final R a() {
        R r;
        synchronized (this.f12988b) {
            r.b(!this.f12997k, "Result has already been consumed.");
            r.b(b(), "Result is not ready.");
            r = this.f12995i;
            this.f12995i = null;
            this.f12993g = null;
            this.f12997k = true;
        }
        J andSet = this.f12994h.getAndSet(null);
        if (andSet != null) {
            andSet.a(this);
        }
        return r;
    }
}
