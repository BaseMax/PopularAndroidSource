package c.e.a.a.j;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import c.e.a.a.C0744q;
import c.e.a.a.j.v;
import c.e.a.a.n.l;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.Format;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: MediaSourceEventListener */
public interface w {

    /* compiled from: MediaSourceEventListener */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f8981a;

        /* renamed from: b  reason: collision with root package name */
        public final v.a f8982b;

        /* renamed from: c  reason: collision with root package name */
        public final CopyOnWriteArrayList<C0113a> f8983c;

        /* renamed from: d  reason: collision with root package name */
        public final long f8984d;

        /* renamed from: c.e.a.a.j.w$a$a  reason: collision with other inner class name */
        /* compiled from: MediaSourceEventListener */
        private static final class C0113a {

            /* renamed from: a  reason: collision with root package name */
            public final Handler f8985a;

            /* renamed from: b  reason: collision with root package name */
            public final w f8986b;

            public C0113a(Handler handler, w wVar) {
                this.f8985a = handler;
                this.f8986b = wVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null, 0);
        }

        public a a(int i2, v.a aVar, long j2) {
            a aVar2 = new a(this.f8983c, i2, aVar, j2);
            return aVar2;
        }

        public void b() {
            v.a aVar = this.f8982b;
            C0737e.a(aVar);
            v.a aVar2 = aVar;
            Iterator<C0113a> it = this.f8983c.iterator();
            while (it.hasNext()) {
                C0113a next = it.next();
                a(next.f8985a, (Runnable) new C0726k(this, next.f8986b, aVar2));
            }
        }

        public void c(b bVar, c cVar) {
            Iterator<C0113a> it = this.f8983c.iterator();
            while (it.hasNext()) {
                C0113a next = it.next();
                a(next.f8985a, (Runnable) new C0725j(this, next.f8986b, bVar, cVar));
            }
        }

        public a(CopyOnWriteArrayList<C0113a> copyOnWriteArrayList, int i2, v.a aVar, long j2) {
            this.f8983c = copyOnWriteArrayList;
            this.f8981a = i2;
            this.f8982b = aVar;
            this.f8984d = j2;
        }

        public void a(Handler handler, w wVar) {
            C0737e.a((handler == null || wVar == null) ? false : true);
            this.f8983c.add(new C0113a(handler, wVar));
        }

        public void a(w wVar) {
            Iterator<C0113a> it = this.f8983c.iterator();
            while (it.hasNext()) {
                C0113a next = it.next();
                if (next.f8986b == wVar) {
                    this.f8983c.remove(next);
                }
            }
        }

        public /* synthetic */ void c(w wVar, b bVar, c cVar) {
            wVar.c(this.f8981a, this.f8982b, bVar, cVar);
        }

        public /* synthetic */ void b(w wVar, v.a aVar) {
            wVar.b(this.f8981a, aVar);
        }

        public void c() {
            v.a aVar = this.f8982b;
            C0737e.a(aVar);
            v.a aVar2 = aVar;
            Iterator<C0113a> it = this.f8983c.iterator();
            while (it.hasNext()) {
                C0113a next = it.next();
                a(next.f8985a, (Runnable) new C0724i(this, next.f8986b, aVar2));
            }
        }

        public void b(l lVar, Uri uri, Map<String, List<String>> map, int i2, long j2, long j3, long j4) {
            b(lVar, uri, map, i2, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j2, j3, j4);
        }

        public void a() {
            v.a aVar = this.f8982b;
            C0737e.a(aVar);
            v.a aVar2 = aVar;
            Iterator<C0113a> it = this.f8983c.iterator();
            while (it.hasNext()) {
                C0113a next = it.next();
                a(next.f8985a, (Runnable) new C0723h(this, next.f8986b, aVar2));
            }
        }

        public void b(l lVar, Uri uri, Map<String, List<String>> map, int i2, int i3, Format format, int i4, Object obj, long j2, long j3, long j4, long j5, long j6) {
            b bVar = new b(lVar, uri, map, j4, j5, j6);
            c cVar = new c(i2, i3, format, i4, obj, a(j2), a(j3));
            b(bVar, cVar);
        }

        public /* synthetic */ void c(w wVar, v.a aVar) {
            wVar.a(this.f8981a, aVar);
        }

        public /* synthetic */ void a(w wVar, v.a aVar) {
            wVar.c(this.f8981a, aVar);
        }

        public void b(b bVar, c cVar) {
            Iterator<C0113a> it = this.f8983c.iterator();
            while (it.hasNext()) {
                C0113a next = it.next();
                a(next.f8985a, (Runnable) new C0722g(this, next.f8986b, bVar, cVar));
            }
        }

        public void a(l lVar, int i2, long j2) {
            a(lVar, i2, -1, (Format) null, 0, (Object) null, -9223372036854775807L, -9223372036854775807L, j2);
        }

        public void a(l lVar, int i2, int i3, Format format, int i4, Object obj, long j2, long j3, long j4) {
            l lVar2 = lVar;
            b bVar = new b(lVar2, lVar2.f9466a, Collections.emptyMap(), j4, 0, 0);
            c cVar = new c(i2, i3, format, i4, obj, a(j2), a(j3));
            c(bVar, cVar);
        }

        public /* synthetic */ void b(w wVar, b bVar, c cVar) {
            wVar.a(this.f8981a, this.f8982b, bVar, cVar);
        }

        public void b(c cVar) {
            v.a aVar = this.f8982b;
            C0737e.a(aVar);
            v.a aVar2 = aVar;
            Iterator<C0113a> it = this.f8983c.iterator();
            while (it.hasNext()) {
                C0113a next = it.next();
                a(next.f8985a, (Runnable) new C0720e(this, next.f8986b, aVar2, cVar));
            }
        }

        public void a(l lVar, Uri uri, Map<String, List<String>> map, int i2, long j2, long j3, long j4) {
            a(lVar, uri, map, i2, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j2, j3, j4);
        }

        public void a(l lVar, Uri uri, Map<String, List<String>> map, int i2, int i3, Format format, int i4, Object obj, long j2, long j3, long j4, long j5, long j6) {
            b bVar = new b(lVar, uri, map, j4, j5, j6);
            c cVar = new c(i2, i3, format, i4, obj, a(j2), a(j3));
            a(bVar, cVar);
        }

        public void a(b bVar, c cVar) {
            Iterator<C0113a> it = this.f8983c.iterator();
            while (it.hasNext()) {
                C0113a next = it.next();
                a(next.f8985a, (Runnable) new C0719d(this, next.f8986b, bVar, cVar));
            }
        }

        public /* synthetic */ void a(w wVar, b bVar, c cVar) {
            wVar.b(this.f8981a, this.f8982b, bVar, cVar);
        }

        public void a(l lVar, Uri uri, Map<String, List<String>> map, int i2, long j2, long j3, long j4, IOException iOException, boolean z) {
            a(lVar, uri, map, i2, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j2, j3, j4, iOException, z);
        }

        public void a(l lVar, Uri uri, Map<String, List<String>> map, int i2, int i3, Format format, int i4, Object obj, long j2, long j3, long j4, long j5, long j6, IOException iOException, boolean z) {
            b bVar = new b(lVar, uri, map, j4, j5, j6);
            c cVar = new c(i2, i3, format, i4, obj, a(j2), a(j3));
            a(bVar, cVar, iOException, z);
        }

        public void a(b bVar, c cVar, IOException iOException, boolean z) {
            Iterator<C0113a> it = this.f8983c.iterator();
            while (it.hasNext()) {
                C0113a next = it.next();
                w wVar = next.f8986b;
                Handler handler = next.f8985a;
                C0718c cVar2 = new C0718c(this, wVar, bVar, cVar, iOException, z);
                a(handler, (Runnable) cVar2);
            }
        }

        public /* synthetic */ void a(w wVar, b bVar, c cVar, IOException iOException, boolean z) {
            wVar.a(this.f8981a, this.f8982b, bVar, cVar, iOException, z);
        }

        public void a(int i2, long j2, long j3) {
            long j4 = j2;
            c cVar = new c(1, i2, null, 3, null, a(j2), a(j3));
            b(cVar);
        }

        public /* synthetic */ void a(w wVar, v.a aVar, c cVar) {
            wVar.a(this.f8981a, aVar, cVar);
        }

        public void a(int i2, Format format, int i3, Object obj, long j2) {
            c cVar = new c(1, i2, format, i3, obj, a(j2), -9223372036854775807L);
            a(cVar);
        }

        public void a(c cVar) {
            Iterator<C0113a> it = this.f8983c.iterator();
            while (it.hasNext()) {
                C0113a next = it.next();
                a(next.f8985a, (Runnable) new C0721f(this, next.f8986b, cVar));
            }
        }

        public /* synthetic */ void a(w wVar, c cVar) {
            wVar.b(this.f8981a, this.f8982b, cVar);
        }

        public final long a(long j2) {
            long b2 = C0744q.b(j2);
            if (b2 == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.f8984d + b2;
        }

        public final void a(Handler handler, Runnable runnable) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }
    }

    /* compiled from: MediaSourceEventListener */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final l f8987a;

        /* renamed from: b  reason: collision with root package name */
        public final Uri f8988b;

        /* renamed from: c  reason: collision with root package name */
        public final Map<String, List<String>> f8989c;

        /* renamed from: d  reason: collision with root package name */
        public final long f8990d;

        /* renamed from: e  reason: collision with root package name */
        public final long f8991e;

        /* renamed from: f  reason: collision with root package name */
        public final long f8992f;

        public b(l lVar, Uri uri, Map<String, List<String>> map, long j2, long j3, long j4) {
            this.f8987a = lVar;
            this.f8988b = uri;
            this.f8989c = map;
            this.f8990d = j2;
            this.f8991e = j3;
            this.f8992f = j4;
        }
    }

    /* compiled from: MediaSourceEventListener */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f8993a;

        /* renamed from: b  reason: collision with root package name */
        public final int f8994b;

        /* renamed from: c  reason: collision with root package name */
        public final Format f8995c;

        /* renamed from: d  reason: collision with root package name */
        public final int f8996d;

        /* renamed from: e  reason: collision with root package name */
        public final Object f8997e;

        /* renamed from: f  reason: collision with root package name */
        public final long f8998f;

        /* renamed from: g  reason: collision with root package name */
        public final long f8999g;

        public c(int i2, int i3, Format format, int i4, Object obj, long j2, long j3) {
            this.f8993a = i2;
            this.f8994b = i3;
            this.f8995c = format;
            this.f8996d = i4;
            this.f8997e = obj;
            this.f8998f = j2;
            this.f8999g = j3;
        }
    }

    void a(int i2, v.a aVar);

    void a(int i2, v.a aVar, b bVar, c cVar);

    void a(int i2, v.a aVar, b bVar, c cVar, IOException iOException, boolean z);

    void a(int i2, v.a aVar, c cVar);

    void b(int i2, v.a aVar);

    void b(int i2, v.a aVar, b bVar, c cVar);

    void b(int i2, v.a aVar, c cVar);

    void c(int i2, v.a aVar);

    void c(int i2, v.a aVar, b bVar, c cVar);
}
