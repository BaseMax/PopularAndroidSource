package l.a.a;

import c.e.d.d.b;
import c.e.d.x;
import com.google.gson.JsonIOException;
import com.google.gson.stream.JsonToken;
import j.S;
import l.j;

/* compiled from: GsonResponseBodyConverter */
public final class c<T> implements j<S, T> {

    /* renamed from: a  reason: collision with root package name */
    public final c.e.d.j f15898a;

    /* renamed from: b  reason: collision with root package name */
    public final x<T> f15899b;

    public c(c.e.d.j jVar, x<T> xVar) {
        this.f15898a = jVar;
        this.f15899b = xVar;
    }

    public T a(S s) {
        b a2 = this.f15898a.a(s.s());
        try {
            T a3 = this.f15899b.a(a2);
            if (a2.K() == JsonToken.END_DOCUMENT) {
                return a3;
            }
            throw new JsonIOException("JSON document was not fully consumed.");
        } finally {
            s.close();
        }
    }
}
