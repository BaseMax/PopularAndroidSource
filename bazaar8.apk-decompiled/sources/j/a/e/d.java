package j.a.e;

import j.C;
import j.E;
import j.I;
import j.L;
import j.P;
import j.S;
import j.a.b.f;
import j.a.c.c;
import j.a.c.i;
import j.a.c.j;
import j.a.c.l;
import j.a.e;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import k.g;
import k.k;
import k.s;
import k.y;
import k.z;
import okhttp3.Protocol;
import okhttp3.internal.http2.ErrorCode;
import okio.ByteString;

/* compiled from: Http2Codec */
public final class d implements c {

    /* renamed from: a  reason: collision with root package name */
    public static final List<String> f15454a = e.a((T[]) new String[]{"connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority"});

    /* renamed from: b  reason: collision with root package name */
    public static final List<String> f15455b = e.a((T[]) new String[]{"connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade"});

    /* renamed from: c  reason: collision with root package name */
    public final E.a f15456c;

    /* renamed from: d  reason: collision with root package name */
    public final f f15457d;

    /* renamed from: e  reason: collision with root package name */
    public final k f15458e;

    /* renamed from: f  reason: collision with root package name */
    public q f15459f;

    /* renamed from: g  reason: collision with root package name */
    public final Protocol f15460g;

    /* compiled from: Http2Codec */
    class a extends k {

        /* renamed from: b  reason: collision with root package name */
        public boolean f15461b = false;

        /* renamed from: c  reason: collision with root package name */
        public long f15462c = 0;

        public a(z zVar) {
            super(zVar);
        }

        public final void a(IOException iOException) {
            if (!this.f15461b) {
                this.f15461b = true;
                d dVar = d.this;
                dVar.f15457d.a(false, dVar, this.f15462c, iOException);
            }
        }

        public long b(g gVar, long j2) {
            try {
                long b2 = e().b(gVar, j2);
                if (b2 > 0) {
                    this.f15462c += b2;
                }
                return b2;
            } catch (IOException e2) {
                a(e2);
                throw e2;
            }
        }

        public void close() {
            super.close();
            a(null);
        }
    }

    public d(I i2, E.a aVar, f fVar, k kVar) {
        Protocol protocol;
        this.f15456c = aVar;
        this.f15457d = fVar;
        this.f15458e = kVar;
        if (i2.w().contains(Protocol.H2_PRIOR_KNOWLEDGE)) {
            protocol = Protocol.H2_PRIOR_KNOWLEDGE;
        } else {
            protocol = Protocol.HTTP_2;
        }
        this.f15460g = protocol;
    }

    public y a(L l2, long j2) {
        return this.f15459f.d();
    }

    public void b() {
        this.f15458e.flush();
    }

    public void cancel() {
        q qVar = this.f15459f;
        if (qVar != null) {
            qVar.c(ErrorCode.CANCEL);
        }
    }

    public static List<a> b(L l2) {
        C c2 = l2.c();
        ArrayList arrayList = new ArrayList(c2.b() + 4);
        arrayList.add(new a(a.f15423c, l2.e()));
        arrayList.add(new a(a.f15424d, j.a(l2.g())));
        String a2 = l2.a("Host");
        if (a2 != null) {
            arrayList.add(new a(a.f15426f, a2));
        }
        arrayList.add(new a(a.f15425e, l2.g().n()));
        int b2 = c2.b();
        for (int i2 = 0; i2 < b2; i2++) {
            ByteString d2 = ByteString.d(c2.a(i2).toLowerCase(Locale.US));
            if (!f15454a.contains(d2.n())) {
                arrayList.add(new a(d2, c2.b(i2)));
            }
        }
        return arrayList;
    }

    public void a(L l2) {
        if (this.f15459f == null) {
            this.f15459f = this.f15458e.a(b(l2), l2.a() != null);
            this.f15459f.h().a((long) this.f15456c.a(), TimeUnit.MILLISECONDS);
            this.f15459f.l().a((long) this.f15456c.b(), TimeUnit.MILLISECONDS);
        }
    }

    public void a() {
        this.f15459f.d().close();
    }

    public P.a a(boolean z) {
        P.a a2 = a(this.f15459f.j(), this.f15460g);
        if (!z || j.a.a.f15256a.a(a2) != 100) {
            return a2;
        }
        return null;
    }

    public static P.a a(C c2, Protocol protocol) {
        C.a aVar = new C.a();
        int b2 = c2.b();
        l lVar = null;
        for (int i2 = 0; i2 < b2; i2++) {
            String a2 = c2.a(i2);
            String b3 = c2.b(i2);
            if (a2.equals(":status")) {
                lVar = l.a("HTTP/1.1 " + b3);
            } else if (!f15455b.contains(a2)) {
                j.a.a.f15256a.a(aVar, a2, b3);
            }
        }
        if (lVar != null) {
            P.a aVar2 = new P.a();
            aVar2.a(protocol);
            aVar2.a(lVar.f15380b);
            aVar2.a(lVar.f15381c);
            aVar2.a(aVar.a());
            return aVar2;
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    public S a(P p) {
        f fVar = this.f15457d;
        fVar.f15343f.e(fVar.f15342e);
        return new i(p.e("Content-Type"), j.a.c.f.a(p), s.a((z) new a(this.f15459f.e())));
    }
}
