package c.e.d.b.a;

import c.e.d.d.c;
import c.e.d.m;
import c.e.d.p;
import c.e.d.q;
import c.e.d.r;
import c.e.d.t;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* renamed from: c.e.d.b.a.f  reason: case insensitive filesystem */
/* compiled from: JsonTreeWriter */
public final class C1012f extends c {

    /* renamed from: l  reason: collision with root package name */
    public static final Writer f11753l = new C1011e();
    public static final t m = new t("closed");
    public final List<p> n = new ArrayList();
    public String o;
    public p p = q.f11872a;

    public C1012f() {
        super(f11753l);
    }

    public c C() {
        a((p) q.f11872a);
        return this;
    }

    public final p D() {
        List<p> list = this.n;
        return list.get(list.size() - 1);
    }

    public p F() {
        if (this.n.isEmpty()) {
            return this.p;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.n);
    }

    public final void a(p pVar) {
        if (this.o != null) {
            if (!pVar.g() || y()) {
                ((r) D()).a(this.o, pVar);
            }
            this.o = null;
        } else if (this.n.isEmpty()) {
            this.p = pVar;
        } else {
            p D = D();
            if (D instanceof m) {
                ((m) D).a(pVar);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public void close() {
        if (this.n.isEmpty()) {
            this.n.add(m);
            return;
        }
        throw new IOException("Incomplete document");
    }

    public c d(boolean z) {
        a((p) new t(Boolean.valueOf(z)));
        return this;
    }

    public c e(String str) {
        if (this.n.isEmpty() || this.o != null) {
            throw new IllegalStateException();
        } else if (D() instanceof r) {
            this.o = str;
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public void flush() {
    }

    public c h(String str) {
        if (str == null) {
            C();
            return this;
        }
        a((p) new t(str));
        return this;
    }

    public c u() {
        m mVar = new m();
        a((p) mVar);
        this.n.add(mVar);
        return this;
    }

    public c v() {
        r rVar = new r();
        a((p) rVar);
        this.n.add(rVar);
        return this;
    }

    public c w() {
        if (this.n.isEmpty() || this.o != null) {
            throw new IllegalStateException();
        } else if (D() instanceof m) {
            List<p> list = this.n;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public c x() {
        if (this.n.isEmpty() || this.o != null) {
            throw new IllegalStateException();
        } else if (D() instanceof r) {
            List<p> list = this.n;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public c h(long j2) {
        a((p) new t((Number) Long.valueOf(j2)));
        return this;
    }

    public c a(Boolean bool) {
        if (bool == null) {
            C();
            return this;
        }
        a((p) new t(bool));
        return this;
    }

    public c a(Number number) {
        if (number == null) {
            C();
            return this;
        }
        if (!A()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        a((p) new t(number));
        return this;
    }
}
