package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.widget.ImageView;
import android.widget.RemoteViews;
import androidx.core.internal.view.SupportMenu;
import com.squareup.picasso.a;
import com.squareup.picasso.v;
import java.io.File;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

public class Picasso {

    /* renamed from: a  reason: collision with root package name */
    static final Handler f5244a = new Handler(Looper.getMainLooper()) {
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i != 3) {
                if (i == 8) {
                    List list = (List) message.obj;
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        c cVar = (c) list.get(i2);
                        Picasso picasso = cVar.f5267b;
                        a aVar = cVar.k;
                        List<a> list2 = cVar.l;
                        boolean z = true;
                        boolean z2 = list2 != null && !list2.isEmpty();
                        if (aVar == null && !z2) {
                            z = false;
                        }
                        if (z) {
                            Uri uri = cVar.g.uri;
                            Exception exc = cVar.p;
                            Bitmap bitmap = cVar.m;
                            LoadedFrom loadedFrom = cVar.o;
                            if (aVar != null) {
                                picasso.a(bitmap, loadedFrom, aVar, exc);
                            }
                            if (z2) {
                                int size2 = list2.size();
                                for (int i3 = 0; i3 < size2; i3++) {
                                    picasso.a(bitmap, loadedFrom, list2.get(i3), exc);
                                }
                            }
                            if (!(picasso.c == null || exc == null)) {
                                picasso.c.onImageLoadFailed(picasso, uri, exc);
                            }
                        }
                    }
                } else if (i == 13) {
                    List list3 = (List) message.obj;
                    int size3 = list3.size();
                    for (int i4 = 0; i4 < size3; i4++) {
                        a aVar2 = (a) list3.get(i4);
                        Picasso picasso2 = aVar2.f5254a;
                        Bitmap a2 = MemoryPolicy.a(aVar2.e) ? picasso2.a(aVar2.i) : null;
                        if (a2 != null) {
                            picasso2.a(a2, LoadedFrom.MEMORY, aVar2, null);
                            if (picasso2.n) {
                                String a3 = aVar2.f5255b.a();
                                af.a("Main", "completed", a3, "from " + LoadedFrom.MEMORY);
                            }
                        } else {
                            picasso2.a(aVar2);
                            if (picasso2.n) {
                                af.a("Main", "resumed", aVar2.f5255b.a());
                            }
                        }
                    }
                } else {
                    throw new AssertionError("Unknown handler message received: " + message.what);
                }
            } else {
                a aVar3 = (a) message.obj;
                if (aVar3.f5254a.n) {
                    af.a("Main", "canceled", aVar3.f5255b.a(), "target got garbage collected");
                }
                aVar3.f5254a.a(aVar3.b());
            }
        }
    };

    /* renamed from: b  reason: collision with root package name */
    static volatile Picasso f5245b = null;
    final c c;
    final List<y> d;
    final Context e;
    final i f;
    final d g;
    final aa h;
    final Map<Object, a> i;
    final Map<ImageView, h> j;
    final ReferenceQueue<Object> k;
    final Bitmap.Config l;
    boolean m;
    volatile boolean n;
    boolean o;
    private final d p;
    private final b q;

    public enum LoadedFrom {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(SupportMenu.CATEGORY_MASK);
        

        /* renamed from: a  reason: collision with root package name */
        final int f5246a;

        private LoadedFrom(int i) {
            this.f5246a = i;
        }
    }

    public enum Priority {
        LOW,
        NORMAL,
        HIGH
    }

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f5247a;

        /* renamed from: b  reason: collision with root package name */
        private j f5248b;
        private ExecutorService c;
        private d d;
        private c e;
        private d f;
        private List<y> g;
        private Bitmap.Config h;
        private boolean i;
        private boolean j;

        public a(Context context) {
            if (context != null) {
                this.f5247a = context.getApplicationContext();
                return;
            }
            throw new IllegalArgumentException("Context must not be null.");
        }

        public final a defaultBitmapConfig(Bitmap.Config config) {
            if (config != null) {
                this.h = config;
                return this;
            }
            throw new IllegalArgumentException("Bitmap config must not be null.");
        }

        public final a downloader(j jVar) {
            if (jVar == null) {
                throw new IllegalArgumentException("Downloader must not be null.");
            } else if (this.f5248b == null) {
                this.f5248b = jVar;
                return this;
            } else {
                throw new IllegalStateException("Downloader already set.");
            }
        }

        public final a executor(ExecutorService executorService) {
            if (executorService == null) {
                throw new IllegalArgumentException("Executor service must not be null.");
            } else if (this.c == null) {
                this.c = executorService;
                return this;
            } else {
                throw new IllegalStateException("Executor service already set.");
            }
        }

        public final a memoryCache(d dVar) {
            if (dVar == null) {
                throw new IllegalArgumentException("Memory cache must not be null.");
            } else if (this.d == null) {
                this.d = dVar;
                return this;
            } else {
                throw new IllegalStateException("Memory cache already set.");
            }
        }

        public final a listener(c cVar) {
            if (cVar == null) {
                throw new IllegalArgumentException("Listener must not be null.");
            } else if (this.e == null) {
                this.e = cVar;
                return this;
            } else {
                throw new IllegalStateException("Listener already set.");
            }
        }

        public final a requestTransformer(d dVar) {
            if (dVar == null) {
                throw new IllegalArgumentException("Transformer must not be null.");
            } else if (this.f == null) {
                this.f = dVar;
                return this;
            } else {
                throw new IllegalStateException("Transformer already set.");
            }
        }

        public final a addRequestHandler(y yVar) {
            if (yVar != null) {
                if (this.g == null) {
                    this.g = new ArrayList();
                }
                if (!this.g.contains(yVar)) {
                    this.g.add(yVar);
                    return this;
                }
                throw new IllegalStateException("RequestHandler already registered.");
            }
            throw new IllegalArgumentException("RequestHandler must not be null.");
        }

        public final a indicatorsEnabled(boolean z) {
            this.i = z;
            return this;
        }

        public final a loggingEnabled(boolean z) {
            this.j = z;
            return this;
        }

        public final Picasso build() {
            Context context = this.f5247a;
            if (this.f5248b == null) {
                this.f5248b = new s(context);
            }
            if (this.d == null) {
                this.d = new o(context);
            }
            if (this.c == null) {
                this.c = new u();
            }
            if (this.f == null) {
                this.f = d.IDENTITY;
            }
            aa aaVar = new aa(this.d);
            Context context2 = context;
            i iVar = new i(context2, this.c, Picasso.f5244a, this.f5248b, this.d, aaVar);
            Picasso picasso = new Picasso(context2, iVar, this.d, this.e, this.f, this.g, aaVar, this.h, this.i, this.j);
            return picasso;
        }
    }

    static class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private final ReferenceQueue<Object> f5249a;

        /* renamed from: b  reason: collision with root package name */
        private final Handler f5250b;

        b(ReferenceQueue<Object> referenceQueue, Handler handler) {
            this.f5249a = referenceQueue;
            this.f5250b = handler;
            setDaemon(true);
            setName("Picasso-refQueue");
        }

        public final void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    a.C0104a aVar = (a.C0104a) this.f5249a.remove(1000);
                    Message obtainMessage = this.f5250b.obtainMessage();
                    if (aVar != null) {
                        obtainMessage.what = 3;
                        obtainMessage.obj = aVar.f5256a;
                        this.f5250b.sendMessage(obtainMessage);
                    } else {
                        obtainMessage.recycle();
                    }
                } catch (InterruptedException unused) {
                    return;
                } catch (Exception e) {
                    this.f5250b.post(new Runnable() {
                        public final void run() {
                            throw new RuntimeException(e);
                        }
                    });
                    return;
                }
            }
        }
    }

    public interface c {
        void onImageLoadFailed(Picasso picasso, Uri uri, Exception exc);
    }

    public interface d {
        public static final d IDENTITY = new d() {
            public final w transformRequest(w wVar) {
                return wVar;
            }
        };

        w transformRequest(w wVar);
    }

    Picasso(Context context, i iVar, d dVar, c cVar, d dVar2, List<y> list, aa aaVar, Bitmap.Config config, boolean z, boolean z2) {
        this.e = context;
        this.f = iVar;
        this.g = dVar;
        this.c = cVar;
        this.p = dVar2;
        this.l = config;
        ArrayList arrayList = new ArrayList((list != null ? list.size() : 0) + 7);
        arrayList.add(new z(context));
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.add(new f(context));
        arrayList.add(new q(context));
        arrayList.add(new g(context));
        arrayList.add(new b(context));
        arrayList.add(new l(context));
        arrayList.add(new r(iVar.d, aaVar));
        this.d = Collections.unmodifiableList(arrayList);
        this.h = aaVar;
        this.i = new WeakHashMap();
        this.j = new WeakHashMap();
        this.m = z;
        this.n = z2;
        this.k = new ReferenceQueue<>();
        this.q = new b(this.k, f5244a);
        this.q.start();
    }

    public void cancelRequest(ImageView imageView) {
        if (imageView != null) {
            a((Object) imageView);
            return;
        }
        throw new IllegalArgumentException("view cannot be null.");
    }

    public void cancelRequest(ac acVar) {
        if (acVar != null) {
            a((Object) acVar);
            return;
        }
        throw new IllegalArgumentException("target cannot be null.");
    }

    public void cancelRequest(RemoteViews remoteViews, int i2) {
        if (remoteViews != null) {
            a((Object) new v.c(remoteViews, i2));
            return;
        }
        throw new IllegalArgumentException("remoteViews cannot be null.");
    }

    public void cancelTag(Object obj) {
        af.b();
        if (obj != null) {
            ArrayList arrayList = new ArrayList(this.i.values());
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = (a) arrayList.get(i2);
                if (obj.equals(aVar.j)) {
                    a(aVar.b());
                }
            }
            ArrayList arrayList2 = new ArrayList(this.j.values());
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                h hVar = (h) arrayList2.get(i3);
                if (obj.equals(hVar.f5276a.f5310b)) {
                    hVar.a();
                }
            }
            return;
        }
        throw new IllegalArgumentException("Cannot cancel requests with null tag.");
    }

    public void pauseTag(Object obj) {
        if (obj != null) {
            i iVar = this.f;
            iVar.i.sendMessage(iVar.i.obtainMessage(11, obj));
            return;
        }
        throw new IllegalArgumentException("tag == null");
    }

    public void resumeTag(Object obj) {
        if (obj != null) {
            i iVar = this.f;
            iVar.i.sendMessage(iVar.i.obtainMessage(12, obj));
            return;
        }
        throw new IllegalArgumentException("tag == null");
    }

    public x load(Uri uri) {
        return new x(this, uri, 0);
    }

    public x load(String str) {
        if (str == null) {
            return new x(this, null, 0);
        }
        if (str.trim().length() != 0) {
            return load(Uri.parse(str));
        }
        throw new IllegalArgumentException("Path must not be empty.");
    }

    public x load(File file) {
        if (file == null) {
            return new x(this, null, 0);
        }
        return load(Uri.fromFile(file));
    }

    public x load(int i2) {
        if (i2 != 0) {
            return new x(this, null, i2);
        }
        throw new IllegalArgumentException("Resource ID must not be zero.");
    }

    public void invalidate(Uri uri) {
        if (uri != null) {
            this.g.clearKeyUri(uri.toString());
        }
    }

    public void invalidate(String str) {
        if (str != null) {
            invalidate(Uri.parse(str));
        }
    }

    public void invalidate(File file) {
        if (file != null) {
            invalidate(Uri.fromFile(file));
            return;
        }
        throw new IllegalArgumentException("file == null");
    }

    public void setIndicatorsEnabled(boolean z) {
        this.m = z;
    }

    public boolean areIndicatorsEnabled() {
        return this.m;
    }

    public void setLoggingEnabled(boolean z) {
        this.n = z;
    }

    public boolean isLoggingEnabled() {
        return this.n;
    }

    public ab getSnapshot() {
        return this.h.b();
    }

    public void shutdown() {
        if (this == f5245b) {
            throw new UnsupportedOperationException("Default singleton instance cannot be shutdown.");
        } else if (!this.o) {
            this.g.clear();
            this.q.interrupt();
            this.h.f5257a.quit();
            i iVar = this.f;
            if (iVar.c instanceof u) {
                iVar.c.shutdown();
            }
            iVar.d.shutdown();
            iVar.f5278a.quit();
            f5244a.post(new Runnable() {
                public final void run() {
                    c cVar = i.this.n;
                    cVar.f5284a.f5279b.unregisterReceiver(cVar);
                }
            });
            for (h a2 : this.j.values()) {
                a2.a();
            }
            this.j.clear();
            this.o = true;
        }
    }

    /* access modifiers changed from: package-private */
    public final w a(w wVar) {
        w transformRequest = this.p.transformRequest(wVar);
        if (transformRequest != null) {
            return transformRequest;
        }
        throw new IllegalStateException("Request transformer " + this.p.getClass().getCanonicalName() + " returned null for " + wVar);
    }

    /* access modifiers changed from: package-private */
    public final void a(a aVar) {
        Object b2 = aVar.b();
        if (!(b2 == null || this.i.get(b2) == aVar)) {
            a(b2);
            this.i.put(b2, aVar);
        }
        b(aVar);
    }

    /* access modifiers changed from: package-private */
    public final void b(a aVar) {
        this.f.a(aVar);
    }

    /* access modifiers changed from: package-private */
    public final Bitmap a(String str) {
        Bitmap bitmap = this.g.get(str);
        if (bitmap != null) {
            this.h.a();
        } else {
            this.h.c.sendEmptyMessage(1);
        }
        return bitmap;
    }

    /* access modifiers changed from: package-private */
    public final void a(Object obj) {
        af.b();
        a remove = this.i.remove(obj);
        if (remove != null) {
            remove.a();
            this.f.b(remove);
        }
        if (obj instanceof ImageView) {
            h remove2 = this.j.remove((ImageView) obj);
            if (remove2 != null) {
                remove2.a();
            }
        }
    }

    public static Picasso get() {
        if (f5245b == null) {
            synchronized (Picasso.class) {
                if (f5245b == null) {
                    if (PicassoProvider.f5253a != null) {
                        f5245b = new a(PicassoProvider.f5253a).build();
                    } else {
                        throw new IllegalStateException("context == null");
                    }
                }
            }
        }
        return f5245b;
    }

    public static void setSingletonInstance(Picasso picasso) {
        if (picasso != null) {
            synchronized (Picasso.class) {
                if (f5245b == null) {
                    f5245b = picasso;
                } else {
                    throw new IllegalStateException("Singleton instance already exists.");
                }
            }
            return;
        }
        throw new IllegalArgumentException("Picasso must not be null.");
    }

    /* access modifiers changed from: package-private */
    public final void a(Bitmap bitmap, LoadedFrom loadedFrom, a aVar, Exception exc) {
        if (!aVar.l) {
            if (!aVar.k) {
                this.i.remove(aVar.b());
            }
            if (bitmap == null) {
                aVar.error(exc);
                if (this.n) {
                    af.a("Main", "errored", aVar.f5255b.a(), exc.getMessage());
                }
            } else if (loadedFrom != null) {
                aVar.complete(bitmap, loadedFrom);
                if (this.n) {
                    af.a("Main", "completed", aVar.f5255b.a(), "from ".concat(String.valueOf(loadedFrom)));
                }
            } else {
                throw new AssertionError("LoadedFrom cannot be null.");
            }
        }
    }
}
