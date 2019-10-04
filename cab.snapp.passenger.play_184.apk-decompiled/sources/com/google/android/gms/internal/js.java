package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.d;
import java.lang.Thread;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

public final class js extends kw {
    /* access modifiers changed from: private */
    public static final AtomicLong l = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: a  reason: collision with root package name */
    private ExecutorService f3260a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public jw f3261b;
    /* access modifiers changed from: private */
    public jw c;
    private final PriorityBlockingQueue<jv<?>> d = new PriorityBlockingQueue<>();
    private final BlockingQueue<jv<?>> f = new LinkedBlockingQueue();
    private final Thread.UncaughtExceptionHandler g = new ju(this, "Thread death: Uncaught exception on worker thread");
    private final Thread.UncaughtExceptionHandler h = new ju(this, "Thread death: Uncaught exception on network thread");
    /* access modifiers changed from: private */
    public final Object i = new Object();
    /* access modifiers changed from: private */
    public final Semaphore j = new Semaphore(2);
    /* access modifiers changed from: private */
    public volatile boolean k;

    js(jx jxVar) {
        super(jxVar);
    }

    private final void a(jv<?> jvVar) {
        synchronized (this.i) {
            this.d.add(jvVar);
            if (this.f3261b == null) {
                this.f3261b = new jw(this, "Measurement Worker", this.d);
                this.f3261b.setUncaughtExceptionHandler(this.g);
                this.f3261b.start();
            } else {
                this.f3261b.zzrk();
            }
        }
    }

    public static boolean zzau() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        return false;
    }

    /* access modifiers changed from: package-private */
    public final ExecutorService c() {
        ExecutorService executorService;
        synchronized (this.i) {
            if (this.f3260a == null) {
                ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new ArrayBlockingQueue(100));
                this.f3260a = threadPoolExecutor;
            }
            executorService = this.f3260a;
        }
        return executorService;
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public final /* bridge */ /* synthetic */ void zzawi() {
        super.zzawi();
    }

    public final void zzawj() {
        if (Thread.currentThread() != this.c) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    public final /* bridge */ /* synthetic */ hu zzawk() {
        return super.zzawk();
    }

    public final /* bridge */ /* synthetic */ ia zzawl() {
        return super.zzawl();
    }

    public final /* bridge */ /* synthetic */ ky zzawm() {
        return super.zzawm();
    }

    public final /* bridge */ /* synthetic */ iu zzawn() {
        return super.zzawn();
    }

    public final /* bridge */ /* synthetic */ ij zzawo() {
        return super.zzawo();
    }

    public final /* bridge */ /* synthetic */ lr zzawp() {
        return super.zzawp();
    }

    public final /* bridge */ /* synthetic */ ln zzawq() {
        return super.zzawq();
    }

    public final /* bridge */ /* synthetic */ iv zzawr() {
        return super.zzawr();
    }

    public final /* bridge */ /* synthetic */ id zzaws() {
        return super.zzaws();
    }

    public final /* bridge */ /* synthetic */ ix zzawt() {
        return super.zzawt();
    }

    public final /* bridge */ /* synthetic */ na zzawu() {
        return super.zzawu();
    }

    public final /* bridge */ /* synthetic */ jr zzawv() {
        return super.zzawv();
    }

    public final /* bridge */ /* synthetic */ mq zzaww() {
        return super.zzaww();
    }

    public final /* bridge */ /* synthetic */ js zzawx() {
        return super.zzawx();
    }

    public final /* bridge */ /* synthetic */ iz zzawy() {
        return super.zzawy();
    }

    public final /* bridge */ /* synthetic */ jj zzawz() {
        return super.zzawz();
    }

    public final /* bridge */ /* synthetic */ ic zzaxa() {
        return super.zzaxa();
    }

    public final boolean zzazs() {
        return Thread.currentThread() == this.f3261b;
    }

    public final <V> Future<V> zzc(Callable<V> callable) throws IllegalStateException {
        k();
        ap.checkNotNull(callable);
        jv jvVar = new jv(this, callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f3261b) {
            if (!this.d.isEmpty()) {
                zzawy().zzazf().log("Callable skipped the worker queue.");
            }
            jvVar.run();
        } else {
            a((jv<?>) jvVar);
        }
        return jvVar;
    }

    public final <V> Future<V> zzd(Callable<V> callable) throws IllegalStateException {
        k();
        ap.checkNotNull(callable);
        jv jvVar = new jv(this, callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f3261b) {
            jvVar.run();
        } else {
            a((jv<?>) jvVar);
        }
        return jvVar;
    }

    public final void zzg(Runnable runnable) throws IllegalStateException {
        k();
        ap.checkNotNull(runnable);
        a((jv<?>) new jv(this, runnable, "Task exception on worker thread"));
    }

    public final void zzh(Runnable runnable) throws IllegalStateException {
        k();
        ap.checkNotNull(runnable);
        jv jvVar = new jv(this, runnable, "Task exception on network thread");
        synchronized (this.i) {
            this.f.add(jvVar);
            if (this.c == null) {
                this.c = new jw(this, "Measurement Network", this.f);
                this.c.setUncaughtExceptionHandler(this.h);
                this.c.start();
            } else {
                this.c.zzrk();
            }
        }
    }

    public final void zzve() {
        if (Thread.currentThread() != this.f3261b) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    public final /* bridge */ /* synthetic */ d zzws() {
        return super.zzws();
    }
}
