package com.koushikdutta.async;

import java.util.LinkedList;
import java.util.WeakHashMap;
import java.util.concurrent.Semaphore;

public final class ae extends LinkedList<Runnable> {
    private static final WeakHashMap<Thread, ae> c = new WeakHashMap<>();

    /* renamed from: a  reason: collision with root package name */
    g f4452a;

    /* renamed from: b  reason: collision with root package name */
    Semaphore f4453b = new Semaphore(0);

    static ae a(Thread thread) {
        ae aeVar;
        synchronized (c) {
            aeVar = c.get(thread);
            if (aeVar == null) {
                aeVar = new ae();
                c.put(thread, aeVar);
            }
        }
        return aeVar;
    }

    static void a(g gVar) {
        synchronized (c) {
            for (ae next : c.values()) {
                if (next.f4452a == gVar) {
                    next.f4453b.release();
                }
            }
        }
    }

    public final boolean add(Runnable runnable) {
        boolean add;
        synchronized (this) {
            add = super.add(runnable);
        }
        return add;
    }

    public final boolean remove(Object obj) {
        boolean remove;
        synchronized (this) {
            remove = super.remove(obj);
        }
        return remove;
    }

    public final Runnable remove() {
        synchronized (this) {
            if (isEmpty()) {
                return null;
            }
            Runnable runnable = (Runnable) super.remove();
            return runnable;
        }
    }
}
