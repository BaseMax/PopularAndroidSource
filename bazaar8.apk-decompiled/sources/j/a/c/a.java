package j.a.c;

import e.a.a.a.a.b.C1046a;
import j.C;
import j.C1152t;
import j.E;
import j.F;
import j.L;
import j.O;
import j.P;
import j.S;
import j.a.e;
import j.a.f;
import j.r;
import java.util.List;
import k.m;
import k.s;
import k.z;

/* compiled from: BridgeInterceptor */
public final class a implements E {

    /* renamed from: a  reason: collision with root package name */
    public final C1152t f15351a;

    public a(C1152t tVar) {
        this.f15351a = tVar;
    }

    public P a(E.a aVar) {
        L e2 = aVar.e();
        L.a f2 = e2.f();
        O a2 = e2.a();
        if (a2 != null) {
            F b2 = a2.b();
            if (b2 != null) {
                f2.b("Content-Type", b2.toString());
            }
            long a3 = a2.a();
            if (a3 != -1) {
                f2.b("Content-Length", Long.toString(a3));
                f2.a("Transfer-Encoding");
            } else {
                f2.b("Transfer-Encoding", "chunked");
                f2.a("Content-Length");
            }
        }
        boolean z = false;
        if (e2.a("Host") == null) {
            f2.b("Host", e.a(e2.g(), false));
        }
        if (e2.a("Connection") == null) {
            f2.b("Connection", "Keep-Alive");
        }
        if (e2.a("Accept-Encoding") == null && e2.a("Range") == null) {
            z = true;
            f2.b("Accept-Encoding", "gzip");
        }
        List<r> a4 = this.f15351a.a(e2.g());
        if (!a4.isEmpty()) {
            f2.b("Cookie", a(a4));
        }
        if (e2.a(C1046a.HEADER_USER_AGENT) == null) {
            f2.b(C1046a.HEADER_USER_AGENT, f.a());
        }
        P a5 = aVar.a(f2.a());
        f.a(this.f15351a, e2.g(), a5.x());
        P.a B = a5.B();
        B.a(e2);
        if (z && "gzip".equalsIgnoreCase(a5.e("Content-Encoding")) && f.b(a5)) {
            m mVar = new m(a5.s().w());
            C.a a6 = a5.x().a();
            a6.d("Content-Encoding");
            a6.d("Content-Length");
            B.a(a6.a());
            B.a((S) new i(a5.e("Content-Type"), -1, s.a((z) mVar)));
        }
        return B.a();
    }

    public final String a(List<r> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                sb.append("; ");
            }
            r rVar = list.get(i2);
            sb.append(rVar.a());
            sb.append('=');
            sb.append(rVar.b());
        }
        return sb.toString();
    }
}
