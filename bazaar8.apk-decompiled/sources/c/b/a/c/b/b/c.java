package c.b.a.c.b.b;

import c.b.a.i.i;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: DiskCacheWriteLocker */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final Map<String, a> f3891a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public final b f3892b = new b();

    /* compiled from: DiskCacheWriteLocker */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public final Lock f3893a = new ReentrantLock();

        /* renamed from: b  reason: collision with root package name */
        public int f3894b;
    }

    /* compiled from: DiskCacheWriteLocker */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        public final Queue<a> f3895a = new ArrayDeque();

        public a a() {
            a poll;
            synchronized (this.f3895a) {
                poll = this.f3895a.poll();
            }
            return poll == null ? new a() : poll;
        }

        public void a(a aVar) {
            synchronized (this.f3895a) {
                if (this.f3895a.size() < 10) {
                    this.f3895a.offer(aVar);
                }
            }
        }
    }

    public void a(String str) {
        a aVar;
        synchronized (this) {
            aVar = this.f3891a.get(str);
            if (aVar == null) {
                aVar = this.f3892b.a();
                this.f3891a.put(str, aVar);
            }
            aVar.f3894b++;
        }
        aVar.f3893a.lock();
    }

    public void b(String str) {
        a aVar;
        synchronized (this) {
            a aVar2 = this.f3891a.get(str);
            i.a(aVar2);
            aVar = aVar2;
            if (aVar.f3894b >= 1) {
                aVar.f3894b--;
                if (aVar.f3894b == 0) {
                    a remove = this.f3891a.remove(str);
                    if (remove.equals(aVar)) {
                        this.f3892b.a(remove);
                    } else {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + aVar + ", but actually removed: " + remove + ", safeKey: " + str);
                    }
                }
            } else {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + aVar.f3894b);
            }
        }
        aVar.f3893a.unlock();
    }
}
