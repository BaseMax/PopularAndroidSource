package com.bumptech.glide.load.b.b;

import com.bumptech.glide.g.j;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

final class c {

    /* renamed from: a  reason: collision with root package name */
    final Map<String, a> f2145a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    final b f2146b = new b();

    static class a {

        /* renamed from: a  reason: collision with root package name */
        final Lock f2147a = new ReentrantLock();

        /* renamed from: b  reason: collision with root package name */
        int f2148b;

        a() {
        }
    }

    static class b {

        /* renamed from: a  reason: collision with root package name */
        final Queue<a> f2149a = new ArrayDeque();

        b() {
        }

        /* access modifiers changed from: package-private */
        public final a a() {
            a poll;
            synchronized (this.f2149a) {
                poll = this.f2149a.poll();
            }
            return poll == null ? new a() : poll;
        }
    }

    c() {
    }

    /* access modifiers changed from: package-private */
    public final void a(String str) {
        a aVar;
        synchronized (this) {
            aVar = (a) j.checkNotNull(this.f2145a.get(str));
            if (aVar.f2148b > 0) {
                aVar.f2148b--;
                if (aVar.f2148b == 0) {
                    a remove = this.f2145a.remove(str);
                    if (remove.equals(aVar)) {
                        b bVar = this.f2146b;
                        synchronized (bVar.f2149a) {
                            if (bVar.f2149a.size() < 10) {
                                bVar.f2149a.offer(remove);
                            }
                        }
                    } else {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + aVar + ", but actually removed: " + remove + ", safeKey: " + str);
                    }
                }
            } else {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + aVar.f2148b);
            }
        }
        aVar.f2147a.unlock();
    }
}
