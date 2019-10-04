package io.fabric.sdk.android.services.concurrency;

import io.fabric.sdk.android.services.concurrency.a;
import io.fabric.sdk.android.services.concurrency.g;
import io.fabric.sdk.android.services.concurrency.j;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

public final class b<E extends a & j & g> extends PriorityBlockingQueue<E> {

    /* renamed from: a  reason: collision with root package name */
    final Queue<E> f6642a = new LinkedList();

    /* renamed from: b  reason: collision with root package name */
    private final ReentrantLock f6643b = new ReentrantLock();

    public final E take() throws InterruptedException {
        return b(0, null, null);
    }

    public final E peek() {
        try {
            return b(1, null, null);
        } catch (InterruptedException unused) {
            return null;
        }
    }

    public final E poll(long j, TimeUnit timeUnit) throws InterruptedException {
        return b(3, Long.valueOf(j), timeUnit);
    }

    public final E poll() {
        try {
            return b(2, null, null);
        } catch (InterruptedException unused) {
            return null;
        }
    }

    public final int size() {
        try {
            this.f6643b.lock();
            return this.f6642a.size() + super.size();
        } finally {
            this.f6643b.unlock();
        }
    }

    public final <T> T[] toArray(T[] tArr) {
        try {
            this.f6643b.lock();
            return a((T[]) super.toArray(tArr), (T[]) this.f6642a.toArray(tArr));
        } finally {
            this.f6643b.unlock();
        }
    }

    public final Object[] toArray() {
        try {
            this.f6643b.lock();
            return a((T[]) super.toArray(), (T[]) this.f6642a.toArray());
        } finally {
            this.f6643b.unlock();
        }
    }

    public final int drainTo(Collection<? super E> collection) {
        try {
            this.f6643b.lock();
            int drainTo = super.drainTo(collection) + this.f6642a.size();
            while (!this.f6642a.isEmpty()) {
                collection.add(this.f6642a.poll());
            }
            return drainTo;
        } finally {
            this.f6643b.unlock();
        }
    }

    public final int drainTo(Collection<? super E> collection, int i) {
        try {
            this.f6643b.lock();
            int drainTo = super.drainTo(collection, i);
            while (!this.f6642a.isEmpty() && drainTo <= i) {
                collection.add(this.f6642a.poll());
                drainTo++;
            }
            return drainTo;
        } finally {
            this.f6643b.unlock();
        }
    }

    public final boolean contains(Object obj) {
        try {
            this.f6643b.lock();
            return super.contains(obj) || this.f6642a.contains(obj);
        } finally {
            this.f6643b.unlock();
        }
    }

    public final void clear() {
        try {
            this.f6643b.lock();
            this.f6642a.clear();
            super.clear();
        } finally {
            this.f6643b.unlock();
        }
    }

    public final boolean remove(Object obj) {
        try {
            this.f6643b.lock();
            return super.remove(obj) || this.f6642a.remove(obj);
        } finally {
            this.f6643b.unlock();
        }
    }

    public final boolean removeAll(Collection<?> collection) {
        try {
            this.f6643b.lock();
            return this.f6642a.removeAll(collection) | super.removeAll(collection);
        } finally {
            this.f6643b.unlock();
        }
    }

    private E a(int i, Long l, TimeUnit timeUnit) throws InterruptedException {
        E e;
        if (i == 0) {
            e = (a) super.take();
        } else if (i == 1) {
            e = (a) super.peek();
        } else if (i == 2) {
            e = (a) super.poll();
        } else if (i != 3) {
            return null;
        } else {
            e = (a) super.poll(l.longValue(), timeUnit);
        }
        return e;
    }

    private boolean a(int i, E e) {
        try {
            this.f6643b.lock();
            if (i == 1) {
                super.remove(e);
            }
            boolean offer = this.f6642a.offer(e);
            return offer;
        } finally {
            this.f6643b.unlock();
        }
    }

    private E b(int i, Long l, TimeUnit timeUnit) throws InterruptedException {
        E a2;
        while (true) {
            a2 = a(i, l, timeUnit);
            if (a2 == null || a2.areDependenciesMet()) {
                return a2;
            }
            a(i, a2);
        }
        return a2;
    }

    public final void recycleBlockedQueue() {
        try {
            this.f6643b.lock();
            Iterator it = this.f6642a.iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                if (aVar.areDependenciesMet()) {
                    super.offer(aVar);
                    it.remove();
                }
            }
        } finally {
            this.f6643b.unlock();
        }
    }

    private static <T> T[] a(T[] tArr, T[] tArr2) {
        int length = tArr.length;
        int length2 = tArr2.length;
        T[] tArr3 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), length + length2);
        System.arraycopy(tArr, 0, tArr3, 0, length);
        System.arraycopy(tArr2, 0, tArr3, length, length2);
        return tArr3;
    }
}
