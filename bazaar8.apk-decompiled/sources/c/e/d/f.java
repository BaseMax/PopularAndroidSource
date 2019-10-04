package c.e.d;

import c.e.d.d.b;
import c.e.d.d.c;
import com.google.gson.stream.JsonToken;

/* compiled from: Gson */
class f extends x<Number> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ j f11843a;

    public f(j jVar) {
        this.f11843a = jVar;
    }

    public Float a(b bVar) {
        if (bVar.K() != JsonToken.NULL) {
            return Float.valueOf((float) bVar.D());
        }
        bVar.H();
        return null;
    }

    public void a(c cVar, Number number) {
        if (number == null) {
            cVar.C();
            return;
        }
        j.a((double) number.floatValue());
        cVar.a(number);
    }
}
