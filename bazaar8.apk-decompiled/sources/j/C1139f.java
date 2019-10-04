package j;

import j.C;
import j.L;
import j.P;
import j.a.a.d;
import j.a.a.h;
import j.a.a.j;
import j.a.c.l;
import j.a.e;
import j.a.g.f;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import k.g;
import k.i;
import k.s;
import k.y;
import k.z;
import okhttp3.Protocol;
import okhttp3.TlsVersion;
import okio.ByteString;

/* renamed from: j.f  reason: case insensitive filesystem */
/* compiled from: Cache */
public final class C1139f implements Closeable, Flushable {

    /* renamed from: a  reason: collision with root package name */
    public final j f15605a;

    /* renamed from: b  reason: collision with root package name */
    public final h f15606b;

    /* renamed from: c  reason: collision with root package name */
    public int f15607c;

    /* renamed from: d  reason: collision with root package name */
    public int f15608d;

    /* renamed from: e  reason: collision with root package name */
    public int f15609e;

    /* renamed from: f  reason: collision with root package name */
    public int f15610f;

    /* renamed from: g  reason: collision with root package name */
    public int f15611g;

    /* renamed from: j.f$a */
    /* compiled from: Cache */
    private final class a implements j.a.a.c {

        /* renamed from: a  reason: collision with root package name */
        public final h.a f15612a;

        /* renamed from: b  reason: collision with root package name */
        public y f15613b;

        /* renamed from: c  reason: collision with root package name */
        public y f15614c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f15615d;

        public a(h.a aVar) {
            this.f15612a = aVar;
            this.f15613b = aVar.a(1);
            this.f15614c = new C1138e(this, this.f15613b, C1139f.this, aVar);
        }

        public y a() {
            return this.f15614c;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
            r4.f15612a.a();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:9:0x0014, code lost:
            j.a.e.a((java.io.Closeable) r4.f15613b);
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void abort() {
            /*
                r4 = this;
                j.f r0 = j.C1139f.this
                monitor-enter(r0)
                boolean r1 = r4.f15615d     // Catch:{ all -> 0x001f }
                if (r1 == 0) goto L_0x0009
                monitor-exit(r0)     // Catch:{ all -> 0x001f }
                return
            L_0x0009:
                r1 = 1
                r4.f15615d = r1     // Catch:{ all -> 0x001f }
                j.f r2 = j.C1139f.this     // Catch:{ all -> 0x001f }
                int r3 = r2.f15608d     // Catch:{ all -> 0x001f }
                int r3 = r3 + r1
                r2.f15608d = r3     // Catch:{ all -> 0x001f }
                monitor-exit(r0)     // Catch:{ all -> 0x001f }
                k.y r0 = r4.f15613b
                j.a.e.a((java.io.Closeable) r0)
                j.a.a.h$a r0 = r4.f15612a     // Catch:{ IOException -> 0x001e }
                r0.a()     // Catch:{ IOException -> 0x001e }
            L_0x001e:
                return
            L_0x001f:
                r1 = move-exception
                monitor-exit(r0)     // Catch:{ all -> 0x001f }
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: j.C1139f.a.abort():void");
        }
    }

    /* renamed from: j.f$b */
    /* compiled from: Cache */
    private static class b extends S {

        /* renamed from: b  reason: collision with root package name */
        public final h.c f15617b;

        /* renamed from: c  reason: collision with root package name */
        public final i f15618c;

        /* renamed from: d  reason: collision with root package name */
        public final String f15619d;

        /* renamed from: e  reason: collision with root package name */
        public final String f15620e;

        public b(h.c cVar, String str, String str2) {
            this.f15617b = cVar;
            this.f15619d = str;
            this.f15620e = str2;
            this.f15618c = s.a((z) new C1140g(this, cVar.b(1), cVar));
        }

        public long u() {
            try {
                if (this.f15620e != null) {
                    return Long.parseLong(this.f15620e);
                }
                return -1;
            } catch (NumberFormatException unused) {
                return -1;
            }
        }

        public F v() {
            String str = this.f15619d;
            if (str != null) {
                return F.b(str);
            }
            return null;
        }

        public i w() {
            return this.f15618c;
        }
    }

    /* renamed from: j.f$c */
    /* compiled from: Cache */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        public static final String f15621a = (f.b().c() + "-Sent-Millis");

        /* renamed from: b  reason: collision with root package name */
        public static final String f15622b = (f.b().c() + "-Received-Millis");

        /* renamed from: c  reason: collision with root package name */
        public final String f15623c;

        /* renamed from: d  reason: collision with root package name */
        public final C f15624d;

        /* renamed from: e  reason: collision with root package name */
        public final String f15625e;

        /* renamed from: f  reason: collision with root package name */
        public final Protocol f15626f;

        /* renamed from: g  reason: collision with root package name */
        public final int f15627g;

        /* renamed from: h  reason: collision with root package name */
        public final String f15628h;

        /* renamed from: i  reason: collision with root package name */
        public final C f15629i;

        /* renamed from: j  reason: collision with root package name */
        public final B f15630j;

        /* renamed from: k  reason: collision with root package name */
        public final long f15631k;

        /* renamed from: l  reason: collision with root package name */
        public final long f15632l;

        public c(z zVar) {
            TlsVersion tlsVersion;
            try {
                i a2 = s.a(zVar);
                this.f15623c = a2.g();
                this.f15625e = a2.g();
                C.a aVar = new C.a();
                int a3 = C1139f.a(a2);
                for (int i2 = 0; i2 < a3; i2++) {
                    aVar.b(a2.g());
                }
                this.f15624d = aVar.a();
                l a4 = l.a(a2.g());
                this.f15626f = a4.f15379a;
                this.f15627g = a4.f15380b;
                this.f15628h = a4.f15381c;
                C.a aVar2 = new C.a();
                int a5 = C1139f.a(a2);
                for (int i3 = 0; i3 < a5; i3++) {
                    aVar2.b(a2.g());
                }
                String c2 = aVar2.c(f15621a);
                String c3 = aVar2.c(f15622b);
                aVar2.d(f15621a);
                aVar2.d(f15622b);
                long j2 = 0;
                this.f15631k = c2 != null ? Long.parseLong(c2) : 0;
                this.f15632l = c3 != null ? Long.parseLong(c3) : j2;
                this.f15629i = aVar2.a();
                if (a()) {
                    String g2 = a2.g();
                    if (g2.length() <= 0) {
                        C1146m a6 = C1146m.a(a2.g());
                        List<Certificate> a7 = a(a2);
                        List<Certificate> a8 = a(a2);
                        if (!a2.d()) {
                            tlsVersion = TlsVersion.a(a2.g());
                        } else {
                            tlsVersion = TlsVersion.SSL_3_0;
                        }
                        this.f15630j = B.a(tlsVersion, a6, a7, a8);
                    } else {
                        throw new IOException("expected \"\" but was \"" + g2 + "\"");
                    }
                } else {
                    this.f15630j = null;
                }
            } finally {
                zVar.close();
            }
        }

        public void a(h.a aVar) {
            k.h a2 = s.a(aVar.a(0));
            a2.a(this.f15623c).writeByte(10);
            a2.a(this.f15625e).writeByte(10);
            a2.g((long) this.f15624d.b()).writeByte(10);
            int b2 = this.f15624d.b();
            for (int i2 = 0; i2 < b2; i2++) {
                a2.a(this.f15624d.a(i2)).a(": ").a(this.f15624d.b(i2)).writeByte(10);
            }
            a2.a(new l(this.f15626f, this.f15627g, this.f15628h).toString()).writeByte(10);
            a2.g((long) (this.f15629i.b() + 2)).writeByte(10);
            int b3 = this.f15629i.b();
            for (int i3 = 0; i3 < b3; i3++) {
                a2.a(this.f15629i.a(i3)).a(": ").a(this.f15629i.b(i3)).writeByte(10);
            }
            a2.a(f15621a).a(": ").g(this.f15631k).writeByte(10);
            a2.a(f15622b).a(": ").g(this.f15632l).writeByte(10);
            if (a()) {
                a2.writeByte(10);
                a2.a(this.f15630j.a().a()).writeByte(10);
                a(a2, this.f15630j.c());
                a(a2, this.f15630j.b());
                a2.a(this.f15630j.d().f()).writeByte(10);
            }
            a2.close();
        }

        public final boolean a() {
            return this.f15623c.startsWith("https://");
        }

        public c(P p) {
            this.f15623c = p.F().g().toString();
            this.f15624d = j.a.c.f.e(p);
            this.f15625e = p.F().e();
            this.f15626f = p.D();
            this.f15627g = p.v();
            this.f15628h = p.z();
            this.f15629i = p.x();
            this.f15630j = p.w();
            this.f15631k = p.G();
            this.f15632l = p.E();
        }

        public final List<Certificate> a(i iVar) {
            int a2 = C1139f.a(iVar);
            if (a2 == -1) {
                return Collections.emptyList();
            }
            try {
                CertificateFactory instance = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(a2);
                for (int i2 = 0; i2 < a2; i2++) {
                    String g2 = iVar.g();
                    g gVar = new g();
                    gVar.a(ByteString.a(g2));
                    arrayList.add(instance.generateCertificate(gVar.k()));
                }
                return arrayList;
            } catch (CertificateException e2) {
                throw new IOException(e2.getMessage());
            }
        }

        public final void a(k.h hVar, List<Certificate> list) {
            try {
                hVar.g((long) list.size()).writeByte(10);
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    hVar.a(ByteString.a(list.get(i2).getEncoded()).f()).writeByte(10);
                }
            } catch (CertificateEncodingException e2) {
                throw new IOException(e2.getMessage());
            }
        }

        public boolean a(L l2, P p) {
            return this.f15623c.equals(l2.g().toString()) && this.f15625e.equals(l2.e()) && j.a.c.f.a(p, this.f15624d, l2);
        }

        public P a(h.c cVar) {
            String b2 = this.f15629i.b("Content-Type");
            String b3 = this.f15629i.b("Content-Length");
            L.a aVar = new L.a();
            aVar.b(this.f15623c);
            aVar.a(this.f15625e, (O) null);
            aVar.a(this.f15624d);
            L a2 = aVar.a();
            P.a aVar2 = new P.a();
            aVar2.a(a2);
            aVar2.a(this.f15626f);
            aVar2.a(this.f15627g);
            aVar2.a(this.f15628h);
            aVar2.a(this.f15629i);
            aVar2.a((S) new b(cVar, b2, b3));
            aVar2.a(this.f15630j);
            aVar2.b(this.f15631k);
            aVar2.a(this.f15632l);
            return aVar2.a();
        }
    }

    public C1139f(File file, long j2) {
        this(file, j2, j.a.f.b.f15568a);
    }

    public static String a(D d2) {
        return ByteString.d(d2.toString()).h().g();
    }

    public void b(L l2) {
        this.f15606b.h(a(l2.g()));
    }

    public void close() {
        this.f15606b.close();
    }

    public void flush() {
        this.f15606b.flush();
    }

    public synchronized void s() {
        this.f15610f++;
    }

    public C1139f(File file, long j2, j.a.f.b bVar) {
        this.f15605a = new C1137d(this);
        this.f15606b = h.a(bVar, file, 201105, 2, j2);
    }

    public P a(L l2) {
        try {
            h.c f2 = this.f15606b.f(a(l2.g()));
            if (f2 == null) {
                return null;
            }
            try {
                c cVar = new c(f2.b(0));
                P a2 = cVar.a(f2);
                if (cVar.a(l2, a2)) {
                    return a2;
                }
                e.a((Closeable) a2.s());
                return null;
            } catch (IOException unused) {
                e.a((Closeable) f2);
                return null;
            }
        } catch (IOException unused2) {
            return null;
        }
    }

    public j.a.a.c a(P p) {
        h.a aVar;
        String e2 = p.F().e();
        if (j.a.c.g.a(p.F().e())) {
            try {
                b(p.F());
            } catch (IOException unused) {
            }
            return null;
        } else if (!e2.equals("GET") || j.a.c.f.c(p)) {
            return null;
        } else {
            c cVar = new c(p);
            try {
                aVar = this.f15606b.e(a(p.F().g()));
                if (aVar == null) {
                    return null;
                }
                try {
                    cVar.a(aVar);
                    return new a(aVar);
                } catch (IOException unused2) {
                    a(aVar);
                    return null;
                }
            } catch (IOException unused3) {
                aVar = null;
                a(aVar);
                return null;
            }
        }
    }

    public void a(P p, P p2) {
        h.a aVar;
        c cVar = new c(p2);
        try {
            aVar = ((b) p.s()).f15617b.s();
            if (aVar != null) {
                try {
                    cVar.a(aVar);
                    aVar.b();
                } catch (IOException unused) {
                }
            }
        } catch (IOException unused2) {
            aVar = null;
            a(aVar);
        }
    }

    public final void a(h.a aVar) {
        if (aVar != null) {
            try {
                aVar.a();
            } catch (IOException unused) {
            }
        }
    }

    public synchronized void a(d dVar) {
        this.f15611g++;
        if (dVar.f15263a != null) {
            this.f15609e++;
        } else if (dVar.f15264b != null) {
            this.f15610f++;
        }
    }

    public static int a(i iVar) {
        try {
            long f2 = iVar.f();
            String g2 = iVar.g();
            if (f2 >= 0 && f2 <= 2147483647L && g2.isEmpty()) {
                return (int) f2;
            }
            throw new IOException("expected an int but was \"" + f2 + g2 + "\"");
        } catch (NumberFormatException e2) {
            throw new IOException(e2.getMessage());
        }
    }
}
