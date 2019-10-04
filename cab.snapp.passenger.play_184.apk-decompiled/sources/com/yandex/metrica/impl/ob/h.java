package com.yandex.metrica.impl.ob;

import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingQueue;

public class h {

    /* renamed from: a  reason: collision with root package name */
    private final Thread f6075a = ni.a("YMM-BD", new Runnable() {
        public void run() {
            while (h.this.f6076b) {
                try {
                    ((a) h.this.c.take()).a();
                } catch (InterruptedException unused) {
                }
            }
        }
    });
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public volatile boolean f6076b = true;
    /* access modifiers changed from: private */
    public final BlockingQueue<a> c = new LinkedBlockingQueue();
    private ConcurrentHashMap<Class, CopyOnWriteArrayList<l<? extends j>>> d = new ConcurrentHashMap<>();
    private WeakHashMap<Object, CopyOnWriteArrayList<c>> e = new WeakHashMap<>();
    private ConcurrentHashMap<Class, j> f = new ConcurrentHashMap<>();

    static class a {

        /* renamed from: a  reason: collision with root package name */
        private final j f6078a;

        /* renamed from: b  reason: collision with root package name */
        private final l<? extends j> f6079b;

        /* synthetic */ a(j jVar, l lVar, byte b2) {
            this(jVar, lVar);
        }

        private a(j jVar, l<? extends j> lVar) {
            this.f6078a = jVar;
            this.f6079b = lVar;
        }

        /* access modifiers changed from: package-private */
        public void a() {
            try {
                if (!this.f6079b.b(this.f6078a)) {
                    this.f6079b.a(this.f6078a);
                }
            } catch (Throwable unused) {
            }
        }
    }

    static final class b {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public static final h f6080a = new h();
    }

    static class c {

        /* renamed from: a  reason: collision with root package name */
        final CopyOnWriteArrayList<l<? extends j>> f6081a;

        /* renamed from: b  reason: collision with root package name */
        final l<? extends j> f6082b;

        /* synthetic */ c(CopyOnWriteArrayList copyOnWriteArrayList, l lVar, byte b2) {
            this(copyOnWriteArrayList, lVar);
        }

        private c(CopyOnWriteArrayList<l<? extends j>> copyOnWriteArrayList, l<? extends j> lVar) {
            this.f6081a = copyOnWriteArrayList;
            this.f6082b = lVar;
        }

        /* access modifiers changed from: protected */
        public void a() {
            this.f6081a.remove(this.f6082b);
        }

        /* access modifiers changed from: protected */
        public void finalize() throws Throwable {
            super.finalize();
            a();
        }
    }

    public static final h a() {
        return b.f6080a;
    }

    h() {
        this.f6075a.start();
    }

    public synchronized void a(j jVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.d.get(jVar.getClass());
        if (copyOnWriteArrayList != null) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                a(jVar, (l) it.next());
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(j jVar, l<? extends j> lVar) {
        this.c.add(new a(jVar, lVar, (byte) 0));
    }

    public synchronized void b(j jVar) {
        a(jVar);
        this.f.put(jVar.getClass(), jVar);
    }

    public synchronized void a(Class<? extends j> cls) {
        this.f.remove(cls);
    }

    public synchronized void a(Object obj, Class cls, l<? extends j> lVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.d.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList();
            this.d.put(cls, copyOnWriteArrayList);
        }
        copyOnWriteArrayList.add(lVar);
        CopyOnWriteArrayList copyOnWriteArrayList2 = this.e.get(obj);
        if (copyOnWriteArrayList2 == null) {
            copyOnWriteArrayList2 = new CopyOnWriteArrayList();
            this.e.put(obj, copyOnWriteArrayList2);
        }
        copyOnWriteArrayList2.add(new c(copyOnWriteArrayList, lVar, (byte) 0));
        j jVar = this.f.get(cls);
        if (jVar != null) {
            a(jVar, lVar);
        }
    }

    public synchronized void a(Object obj) {
        List<c> remove = this.e.remove(obj);
        if (remove != null) {
            for (c a2 : remove) {
                a2.a();
            }
        }
    }
}
