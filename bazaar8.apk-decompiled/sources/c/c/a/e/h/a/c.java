package c.c.a.e.h.a;

import android.text.TextUtils;
import com.crashlytics.android.core.SessionProtobufHelper;
import e.a.a.a.a.b.C1046a;
import j.B;
import j.C;
import j.C1146m;
import j.F;
import j.L;
import j.O;
import j.P;
import j.S;
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
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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

/* compiled from: Cache */
public final class c implements Closeable, Flushable {

    /* renamed from: a  reason: collision with root package name */
    public final j f5482a;

    /* renamed from: b  reason: collision with root package name */
    public final h f5483b;

    /* renamed from: c  reason: collision with root package name */
    public int f5484c;

    /* renamed from: d  reason: collision with root package name */
    public int f5485d;

    /* renamed from: e  reason: collision with root package name */
    public int f5486e;

    /* renamed from: f  reason: collision with root package name */
    public int f5487f;

    /* renamed from: g  reason: collision with root package name */
    public int f5488g;

    /* compiled from: Cache */
    private final class a implements j.a.a.c {

        /* renamed from: a  reason: collision with root package name */
        public final h.a f5489a;

        /* renamed from: b  reason: collision with root package name */
        public y f5490b;

        /* renamed from: c  reason: collision with root package name */
        public y f5491c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f5492d;

        public a(h.a aVar) {
            this.f5489a = aVar;
            this.f5490b = aVar.a(1);
            this.f5491c = new b(this, this.f5490b, c.this, aVar);
        }

        public y a() {
            return this.f5491c;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
            r2.f5489a.a();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:9:0x0012, code lost:
            j.a.e.a((java.io.Closeable) r2.f5490b);
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void abort() {
            /*
                r2 = this;
                c.c.a.e.h.a.c r0 = c.c.a.e.h.a.c.this
                monitor-enter(r0)
                boolean r1 = r2.f5492d     // Catch:{ all -> 0x001d }
                if (r1 == 0) goto L_0x0009
                monitor-exit(r0)     // Catch:{ all -> 0x001d }
                return
            L_0x0009:
                r1 = 1
                r2.f5492d = r1     // Catch:{ all -> 0x001d }
                c.c.a.e.h.a.c r1 = c.c.a.e.h.a.c.this     // Catch:{ all -> 0x001d }
                int unused = r1.f5485d = r1.f5485d + 1     // Catch:{ all -> 0x001d }
                monitor-exit(r0)     // Catch:{ all -> 0x001d }
                k.y r0 = r2.f5490b
                j.a.e.a((java.io.Closeable) r0)
                j.a.a.h$a r0 = r2.f5489a     // Catch:{ IOException -> 0x001c }
                r0.a()     // Catch:{ IOException -> 0x001c }
            L_0x001c:
                return
            L_0x001d:
                r1 = move-exception
                monitor-exit(r0)     // Catch:{ all -> 0x001d }
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.h.a.c.a.abort():void");
        }
    }

    /* compiled from: Cache */
    private static class b extends S {

        /* renamed from: b  reason: collision with root package name */
        public final h.c f5494b;

        /* renamed from: c  reason: collision with root package name */
        public final i f5495c;

        /* renamed from: d  reason: collision with root package name */
        public final String f5496d;

        /* renamed from: e  reason: collision with root package name */
        public final String f5497e;

        public b(h.c cVar, String str, String str2) {
            this.f5494b = cVar;
            this.f5496d = str;
            this.f5497e = str2;
            this.f5495c = s.a((z) new d(this, cVar.b(1), cVar));
        }

        public long u() {
            try {
                if (this.f5497e != null) {
                    return Long.parseLong(this.f5497e);
                }
                return -1;
            } catch (NumberFormatException unused) {
                return -1;
            }
        }

        public F v() {
            String str = this.f5496d;
            if (str != null) {
                return F.b(str);
            }
            return null;
        }

        public i w() {
            return this.f5495c;
        }
    }

    /* renamed from: c.c.a.e.h.a.c$c  reason: collision with other inner class name */
    /* compiled from: Cache */
    private static final class C0081c {

        /* renamed from: a  reason: collision with root package name */
        public static final String f5498a = (f.b().c() + "-Sent-Millis");

        /* renamed from: b  reason: collision with root package name */
        public static final String f5499b = (f.b().c() + "-Received-Millis");

        /* renamed from: c  reason: collision with root package name */
        public final String f5500c;

        /* renamed from: d  reason: collision with root package name */
        public final O f5501d;

        /* renamed from: e  reason: collision with root package name */
        public final C f5502e;

        /* renamed from: f  reason: collision with root package name */
        public final String f5503f;

        /* renamed from: g  reason: collision with root package name */
        public final Protocol f5504g;

        /* renamed from: h  reason: collision with root package name */
        public final int f5505h;

        /* renamed from: i  reason: collision with root package name */
        public final String f5506i;

        /* renamed from: j  reason: collision with root package name */
        public final C f5507j;

        /* renamed from: k  reason: collision with root package name */
        public final B f5508k;

        /* renamed from: l  reason: collision with root package name */
        public final long f5509l;
        public final long m;

        public C0081c(z zVar) {
            try {
                i a2 = s.a(zVar);
                this.f5501d = O.a(F.b(C1046a.ACCEPT_JSON_VALUE), a2.g());
                this.f5500c = a2.g();
                this.f5503f = a2.g();
                C.a aVar = new C.a();
                int a3 = c.b(a2);
                for (int i2 = 0; i2 < a3; i2++) {
                    aVar.a(a2.g());
                }
                this.f5502e = aVar.a();
                l a4 = l.a(a2.g());
                this.f5504g = a4.f15379a;
                this.f5505h = a4.f15380b;
                this.f5506i = a4.f15381c;
                C.a aVar2 = new C.a();
                int a5 = c.b(a2);
                for (int i3 = 0; i3 < a5; i3++) {
                    aVar2.a(a2.g());
                }
                String c2 = aVar2.c(f5498a);
                String c3 = aVar2.c(f5499b);
                aVar2.d(f5498a);
                aVar2.d(f5499b);
                long j2 = 0;
                this.f5509l = c2 != null ? Long.parseLong(c2) : 0;
                this.m = c3 != null ? Long.parseLong(c3) : j2;
                this.f5507j = aVar2.a();
                if (a()) {
                    String g2 = a2.g();
                    if (g2.length() <= 0) {
                        this.f5508k = B.a(!a2.d() ? TlsVersion.a(a2.g()) : TlsVersion.SSL_3_0, C1146m.a(a2.g()), a(a2), a(a2));
                    } else {
                        throw new IOException("expected \"\" but was \"" + g2 + "\"");
                    }
                } else {
                    this.f5508k = null;
                }
            } finally {
                zVar.close();
            }
        }

        public void a(h.a aVar) {
            k.h a2 = s.a(aVar.a(0));
            this.f5501d.a(a2);
            a2.writeByte(10);
            a2.a(this.f5500c).writeByte(10);
            a2.a(this.f5503f).writeByte(10);
            a2.g((long) this.f5502e.b()).writeByte(10);
            int b2 = this.f5502e.b();
            for (int i2 = 0; i2 < b2; i2++) {
                a2.a(this.f5502e.a(i2)).a(": ").a(this.f5502e.b(i2)).writeByte(10);
            }
            a2.a(new l(this.f5504g, this.f5505h, this.f5506i).toString()).writeByte(10);
            a2.g((long) (this.f5507j.b() + 2)).writeByte(10);
            int b3 = this.f5507j.b();
            for (int i3 = 0; i3 < b3; i3++) {
                a2.a(this.f5507j.a(i3)).a(": ").a(this.f5507j.b(i3)).writeByte(10);
            }
            a2.a(f5498a).a(": ").g(this.f5509l).writeByte(10);
            a2.a(f5499b).a(": ").g(this.m).writeByte(10);
            if (a()) {
                a2.writeByte(10);
                a2.a(this.f5508k.a().a()).writeByte(10);
                a(a2, this.f5508k.c());
                a(a2, this.f5508k.b());
                a2.a(this.f5508k.d().f()).writeByte(10);
            }
            a2.close();
        }

        public C0081c(P p) {
            this.f5500c = p.F().g().toString();
            this.f5502e = j.a.c.f.e(p);
            this.f5503f = p.F().e();
            this.f5501d = p.F().a();
            this.f5504g = p.D();
            this.f5505h = p.v();
            this.f5506i = p.z();
            this.f5507j = p.x();
            this.f5508k = p.w();
            this.f5509l = p.G();
            this.m = p.E();
        }

        public final boolean a() {
            return this.f5500c.startsWith("https://");
        }

        public final List<Certificate> a(i iVar) {
            int a2 = c.b(iVar);
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
            return this.f5500c.equals(l2.g().toString()) && this.f5503f.equals(l2.e()) && a(p);
        }

        public final boolean a(P p) {
            long a2 = a(p.e("Cache-Control"));
            long currentTimeMillis = System.currentTimeMillis();
            long j2 = this.f5509l;
            return currentTimeMillis >= j2 && j2 + (1000 * a2) >= System.currentTimeMillis() && a2 > 0;
        }

        public final long a(String str) {
            if (str == null) {
                return 0;
            }
            try {
                for (String str2 : str.split(",")) {
                    if (str2 != null) {
                        if (str2.trim().startsWith("max-age")) {
                            int indexOf = str2.indexOf("=");
                            if (indexOf >= 0) {
                                return Long.parseLong(str2.substring(indexOf + 1));
                            }
                        } else {
                            continue;
                        }
                    }
                }
            } catch (Exception e2) {
                c.c.a.c.c.a.f4699b.a((Throwable) e2);
            }
            return 0;
        }

        public P a(h.c cVar) {
            String b2 = this.f5507j.b("Content-Type");
            String b3 = this.f5507j.b("Content-Length");
            L.a aVar = new L.a();
            aVar.b(this.f5500c);
            aVar.a(this.f5503f, this.f5501d);
            aVar.a(this.f5502e);
            L a2 = aVar.a();
            P.a aVar2 = new P.a();
            aVar2.a(a2);
            aVar2.a(this.f5504g);
            aVar2.a(this.f5505h);
            aVar2.a(this.f5506i);
            aVar2.a(this.f5507j);
            aVar2.a((S) new b(cVar, b2, b3));
            aVar2.a(this.f5508k);
            aVar2.b(this.f5509l);
            aVar2.a(this.m);
            return aVar2.a();
        }
    }

    public c(File file, long j2) {
        this(file, j2, j.a.f.b.f15568a);
    }

    public static String c(L l2) {
        String g2 = ByteString.d(l2.g().toString()).h().g();
        if (!l2.e().equals("POST")) {
            return g2;
        }
        return g2 + e(b(l2));
    }

    public static String e(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes());
                StringBuilder sb = new StringBuilder();
                for (byte b2 : digest) {
                    String hexString = Integer.toHexString(b2 & 255);
                    if (hexString.length() == 1) {
                        hexString = SessionProtobufHelper.SIGNAL_DEFAULT + hexString;
                    }
                    sb.append(hexString);
                }
                return sb.toString();
            } catch (NoSuchAlgorithmException e2) {
                e2.printStackTrace();
            }
        }
        return "";
    }

    public void close() {
        this.f5483b.close();
    }

    public final void d(L l2) {
        this.f5483b.h(c(l2));
    }

    public void flush() {
        this.f5483b.flush();
    }

    public void s() {
        this.f5483b.u();
    }

    public synchronized void t() {
        this.f5487f++;
    }

    public c(File file, long j2, j.a.f.b bVar) {
        this.f5482a = new a(this);
        this.f5483b = h.a(bVar, file, 201105, 2, j2);
    }

    public static String b(L l2) {
        g gVar = new g();
        O a2 = l2.a();
        if (a2 != null) {
            try {
                a2.a(gVar);
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        String t = gVar.t();
        gVar.close();
        return t;
    }

    public final P a(L l2) {
        try {
            h.c f2 = this.f5483b.f(c(l2));
            if (f2 == null) {
                return null;
            }
            try {
                C0081c cVar = new C0081c(f2.b(0));
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

    public static int b(i iVar) {
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

    public final j.a.a.c a(P p) {
        h.a aVar;
        if (j.a.c.f.c(p)) {
            return null;
        }
        C0081c cVar = new C0081c(p);
        try {
            aVar = this.f5483b.e(c(p.F()));
            if (aVar == null) {
                return null;
            }
            try {
                cVar.a(aVar);
                return new a(aVar);
            } catch (IOException unused) {
                a(aVar);
                return null;
            }
        } catch (IOException unused2) {
            aVar = null;
            a(aVar);
            return null;
        }
    }

    public final void a(P p, P p2) {
        C0081c cVar = new C0081c(p2);
        h.a aVar = null;
        h.c cVar2 = p.s() != null ? ((b) p.s()).f5494b : null;
        if (cVar2 != null) {
            try {
                aVar = cVar2.s();
            } catch (IOException unused) {
                a((h.a) null);
                return;
            }
        }
        if (aVar != null) {
            cVar.a(aVar);
            aVar.b();
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
        this.f5488g++;
        if (dVar.f15263a != null) {
            this.f5486e++;
        } else if (dVar.f15264b != null) {
            this.f5487f++;
        }
    }
}
