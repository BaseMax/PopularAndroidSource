package j;

import j.K;
import j.a.e;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: j.u  reason: case insensitive filesystem */
/* compiled from: Dispatcher */
public final class C1153u {

    /* renamed from: a  reason: collision with root package name */
    public int f15710a = 64;

    /* renamed from: b  reason: collision with root package name */
    public int f15711b = 5;

    /* renamed from: c  reason: collision with root package name */
    public Runnable f15712c;

    /* renamed from: d  reason: collision with root package name */
    public ExecutorService f15713d;

    /* renamed from: e  reason: collision with root package name */
    public final Deque<K.a> f15714e = new ArrayDeque();

    /* renamed from: f  reason: collision with root package name */
    public final Deque<K.a> f15715f = new ArrayDeque();

    /* renamed from: g  reason: collision with root package name */
    public final Deque<K> f15716g = new ArrayDeque();

    public synchronized ExecutorService a() {
        if (this.f15713d == null) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), e.a("OkHttp Dispatcher", false));
            this.f15713d = threadPoolExecutor;
        }
        return this.f15713d;
    }

    public final boolean b() {
        int i2;
        boolean z;
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<K.a> it = this.f15714e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                K.a next = it.next();
                if (this.f15715f.size() >= this.f15710a) {
                    break;
                } else if (c(next) < this.f15711b) {
                    it.remove();
                    arrayList.add(next);
                    this.f15715f.add(next);
                }
            }
            z = c() > 0;
        }
        int size = arrayList.size();
        for (i2 = 0; i2 < size; i2++) {
            ((K.a) arrayList.get(i2)).a(a());
        }
        return z;
    }

    public final int c(K.a aVar) {
        int i2 = 0;
        for (K.a next : this.f15715f) {
            if (!next.c().f15189f && next.d().equals(aVar.d())) {
                i2++;
            }
        }
        return i2;
    }

    public synchronized int c() {
        return this.f15715f.size() + this.f15716g.size();
    }

    public void a(K.a aVar) {
        synchronized (this) {
            this.f15714e.add(aVar);
        }
        b();
    }

    public synchronized void a(K k2) {
        this.f15716g.add(k2);
    }

    public final <T> void a(Deque<T> deque, T t) {
        Runnable runnable;
        synchronized (this) {
            if (deque.remove(t)) {
                runnable = this.f15712c;
            } else {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        if (!b() && runnable != null) {
            runnable.run();
        }
    }

    public void b(K.a aVar) {
        a(this.f15715f, aVar);
    }

    public void b(K k2) {
        a(this.f15716g, k2);
    }
}
