package l.a.a;

import c.e.d.d.c;
import c.e.d.x;
import j.F;
import j.O;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import k.g;
import l.j;

/* compiled from: GsonRequestBodyConverter */
public final class b<T> implements j<T, O> {

    /* renamed from: a  reason: collision with root package name */
    public static final F f15894a = F.a("application/json; charset=UTF-8");

    /* renamed from: b  reason: collision with root package name */
    public static final Charset f15895b = Charset.forName("UTF-8");

    /* renamed from: c  reason: collision with root package name */
    public final c.e.d.j f15896c;

    /* renamed from: d  reason: collision with root package name */
    public final x<T> f15897d;

    public b(c.e.d.j jVar, x<T> xVar) {
        this.f15896c = jVar;
        this.f15897d = xVar;
    }

    public O a(T t) {
        g gVar = new g();
        c a2 = this.f15896c.a((Writer) new OutputStreamWriter(gVar.r(), f15895b));
        this.f15897d.a(a2, t);
        a2.close();
        return O.a(f15894a, gVar.s());
    }
}
