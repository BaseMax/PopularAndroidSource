package com.squareup.picasso;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.widget.ImageView;
import c.f.a.C1030a;
import c.f.a.C1031b;
import c.f.a.C1038i;
import c.f.a.C1040k;
import c.f.a.C1042m;
import c.f.a.C1043n;
import c.f.a.C1044o;
import c.f.a.E;
import c.f.a.G;
import c.f.a.H;
import c.f.a.I;
import c.f.a.J;
import c.f.a.L;
import c.f.a.P;
import c.f.a.q;
import c.f.a.r;
import c.f.a.t;
import c.f.a.x;
import c.f.a.z;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

public class Picasso {

    /* renamed from: a  reason: collision with root package name */
    public static final Handler f13602a = new A(Looper.getMainLooper());
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b  reason: collision with root package name */
    public static volatile Picasso f13603b = null;

    /* renamed from: c  reason: collision with root package name */
    public final c f13604c;

    /* renamed from: d  reason: collision with root package name */
    public final d f13605d;

    /* renamed from: e  reason: collision with root package name */
    public final b f13606e;

    /* renamed from: f  reason: collision with root package name */
    public final List<I> f13607f;

    /* renamed from: g  reason: collision with root package name */
    public final Context f13608g;

    /* renamed from: h  reason: collision with root package name */
    public final q f13609h;

    /* renamed from: i  reason: collision with root package name */
    public final C1040k f13610i;

    /* renamed from: j  reason: collision with root package name */
    public final L f13611j;

    /* renamed from: k  reason: collision with root package name */
    public final Map<Object, C1030a> f13612k;

    /* renamed from: l  reason: collision with root package name */
    public final Map<ImageView, C1044o> f13613l;
    public final ReferenceQueue<Object> m;
    public final Bitmap.Config n;
    public boolean o;
    public volatile boolean p;
    public boolean q;

    public enum LoadedFrom {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(-65536);
        
        public final int debugColor;

        /* access modifiers changed from: public */
        LoadedFrom(int i2) {
            this.debugColor = i2;
        }
    }

    public enum Priority {
        LOW,
        NORMAL,
        HIGH
    }

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final Context f13616a;

        /* renamed from: b  reason: collision with root package name */
        public r f13617b;

        /* renamed from: c  reason: collision with root package name */
        public ExecutorService f13618c;

        /* renamed from: d  reason: collision with root package name */
        public C1040k f13619d;

        /* renamed from: e  reason: collision with root package name */
        public c f13620e;

        /* renamed from: f  reason: collision with root package name */
        public d f13621f;

        /* renamed from: g  reason: collision with root package name */
        public List<I> f13622g;

        /* renamed from: h  reason: collision with root package name */
        public Bitmap.Config f13623h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f13624i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f13625j;

        public a(Context context) {
            if (context != null) {
                this.f13616a = context.getApplicationContext();
                return;
            }
            throw new IllegalArgumentException("Context must not be null.");
        }

        public a a(r rVar) {
            if (rVar == null) {
                throw new IllegalArgumentException("Downloader must not be null.");
            } else if (this.f13617b == null) {
                this.f13617b = rVar;
                return this;
            } else {
                throw new IllegalStateException("Downloader already set.");
            }
        }

        public Picasso a() {
            Context context = this.f13616a;
            if (this.f13617b == null) {
                this.f13617b = new z(context);
            }
            if (this.f13619d == null) {
                this.f13619d = new x(context);
            }
            if (this.f13618c == null) {
                this.f13618c = new E();
            }
            if (this.f13621f == null) {
                this.f13621f = d.f13628a;
            }
            L l2 = new L(this.f13619d);
            Context context2 = context;
            q qVar = new q(context2, this.f13618c, Picasso.f13602a, this.f13617b, this.f13619d, l2);
            Picasso picasso = new Picasso(context2, qVar, this.f13619d, this.f13620e, this.f13621f, this.f13622g, l2, this.f13623h, this.f13624i, this.f13625j);
            return picasso;
        }
    }

    private static class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        public final ReferenceQueue<Object> f13626a;

        /* renamed from: b  reason: collision with root package name */
        public final Handler f13627b;

        public b(ReferenceQueue<Object> referenceQueue, Handler handler) {
            this.f13626a = referenceQueue;
            this.f13627b = handler;
            setDaemon(true);
            setName("Picasso-refQueue");
        }

        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    C1030a.C0135a aVar = (C1030a.C0135a) this.f13626a.remove(1000);
                    Message obtainMessage = this.f13627b.obtainMessage();
                    if (aVar != null) {
                        obtainMessage.what = 3;
                        obtainMessage.obj = aVar.f11971a;
                        this.f13627b.sendMessage(obtainMessage);
                    } else {
                        obtainMessage.recycle();
                    }
                } catch (InterruptedException unused) {
                    return;
                } catch (Exception e2) {
                    this.f13627b.post(new B(this, e2));
                    return;
                }
            }
        }
    }

    public interface c {
        void a(Picasso picasso, Uri uri, Exception exc);
    }

    public interface d {

        /* renamed from: a  reason: collision with root package name */
        public static final d f13628a = new C();

        G a(G g2);
    }

    public Picasso(Context context, q qVar, C1040k kVar, c cVar, d dVar, List<I> list, L l2, Bitmap.Config config, boolean z, boolean z2) {
        this.f13608g = context;
        this.f13609h = qVar;
        this.f13610i = kVar;
        this.f13604c = cVar;
        this.f13605d = dVar;
        this.n = config;
        ArrayList arrayList = new ArrayList((list != null ? list.size() : 0) + 7);
        arrayList.add(new J(context));
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.add(new C1042m(context));
        arrayList.add(new MediaStoreRequestHandler(context));
        arrayList.add(new C1043n(context));
        arrayList.add(new C1031b(context));
        arrayList.add(new t(context));
        arrayList.add(new NetworkRequestHandler(qVar.f12005d, l2));
        this.f13607f = Collections.unmodifiableList(arrayList);
        this.f13611j = l2;
        this.f13612k = new WeakHashMap();
        this.f13613l = new WeakHashMap();
        this.o = z;
        this.p = z2;
        this.m = new ReferenceQueue<>();
        this.f13606e = new b(this.m, f13602a);
        this.f13606e.start();
    }

    public void a(ImageView imageView) {
        if (imageView != null) {
            a((Object) imageView);
            return;
        }
        throw new IllegalArgumentException("view cannot be null.");
    }

    public Bitmap b(String str) {
        Bitmap a2 = this.f13610i.a(str);
        if (a2 != null) {
            this.f13611j.b();
        } else {
            this.f13611j.c();
        }
        return a2;
    }

    public void c(C1030a aVar) {
        this.f13609h.b(aVar);
    }

    public H a(Uri uri) {
        return new H(this, uri, 0);
    }

    public H a(String str) {
        if (str == null) {
            return new H(this, null, 0);
        }
        if (str.trim().length() != 0) {
            return a(Uri.parse(str));
        }
        throw new IllegalArgumentException("Path must not be empty.");
    }

    public void b(C1030a aVar) {
        Bitmap b2 = MemoryPolicy.a(aVar.f11963e) ? b(aVar.b()) : null;
        if (b2 != null) {
            a(b2, LoadedFrom.MEMORY, aVar, null);
            if (this.p) {
                String d2 = aVar.f11960b.d();
                P.a("Main", "completed", d2, "from " + LoadedFrom.MEMORY);
                return;
            }
            return;
        }
        a(aVar);
        if (this.p) {
            P.a("Main", "resumed", aVar.f11960b.d());
        }
    }

    public List<I> a() {
        return this.f13607f;
    }

    public G a(G g2) {
        this.f13605d.a(g2);
        if (g2 != null) {
            return g2;
        }
        throw new IllegalStateException("Request transformer " + this.f13605d.getClass().getCanonicalName() + " returned null for " + g2);
    }

    public void a(ImageView imageView, C1044o oVar) {
        if (this.f13613l.containsKey(imageView)) {
            a((Object) imageView);
        }
        this.f13613l.put(imageView, oVar);
    }

    public void a(C1030a aVar) {
        Object i2 = aVar.i();
        if (!(i2 == null || this.f13612k.get(i2) == aVar)) {
            a(i2);
            this.f13612k.put(i2, aVar);
        }
        c(aVar);
    }

    public void a(C1038i iVar) {
        C1030a c2 = iVar.c();
        List<C1030a> d2 = iVar.d();
        boolean z = true;
        boolean z2 = d2 != null && !d2.isEmpty();
        if (c2 == null && !z2) {
            z = false;
        }
        if (z) {
            Uri uri = iVar.e().f11892e;
            Exception f2 = iVar.f();
            Bitmap l2 = iVar.l();
            LoadedFrom h2 = iVar.h();
            if (c2 != null) {
                a(l2, h2, c2, f2);
            }
            if (z2) {
                int size = d2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    a(l2, h2, d2.get(i2), f2);
                }
            }
            c cVar = this.f13604c;
            if (!(cVar == null || f2 == null)) {
                cVar.a(this, uri, f2);
            }
        }
    }

    public final void a(Bitmap bitmap, LoadedFrom loadedFrom, C1030a aVar, Exception exc) {
        if (!aVar.j()) {
            if (!aVar.k()) {
                this.f13612k.remove(aVar.i());
            }
            if (bitmap == null) {
                aVar.a(exc);
                if (this.p) {
                    P.a("Main", "errored", aVar.f11960b.d(), exc.getMessage());
                }
            } else if (loadedFrom != null) {
                aVar.a(bitmap, loadedFrom);
                if (this.p) {
                    String d2 = aVar.f11960b.d();
                    P.a("Main", "completed", d2, "from " + loadedFrom);
                }
            } else {
                throw new AssertionError("LoadedFrom cannot be null.");
            }
        }
    }

    public void a(Object obj) {
        P.a();
        C1030a remove = this.f13612k.remove(obj);
        if (remove != null) {
            remove.a();
            this.f13609h.a(remove);
        }
        if (obj instanceof ImageView) {
            C1044o remove2 = this.f13613l.remove((ImageView) obj);
            if (remove2 != null) {
                remove2.a();
            }
        }
    }
}
