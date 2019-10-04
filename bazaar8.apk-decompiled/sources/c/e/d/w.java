package c.e.d;

import c.e.d.d.b;
import c.e.d.d.c;
import com.google.gson.stream.JsonToken;

/* compiled from: TypeAdapter */
class w extends x<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f11876a;

    public w(x xVar) {
        this.f11876a = xVar;
    }

    public void a(c cVar, T t) {
        if (t == null) {
            cVar.C();
        } else {
            this.f11876a.a(cVar, t);
        }
    }

    public T a(b bVar) {
        if (bVar.K() != JsonToken.NULL) {
            return this.f11876a.a(bVar);
        }
        bVar.H();
        return null;
    }
}
