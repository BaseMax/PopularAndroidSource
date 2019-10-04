package c.e.d;

import c.e.d.d.b;
import c.e.d.d.c;
import com.google.gson.stream.JsonToken;

/* compiled from: Gson */
class e extends x<Number> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ j f11842a;

    public e(j jVar) {
        this.f11842a = jVar;
    }

    public Double a(b bVar) {
        if (bVar.K() != JsonToken.NULL) {
            return Double.valueOf(bVar.D());
        }
        bVar.H();
        return null;
    }

    public void a(c cVar, Number number) {
        if (number == null) {
            cVar.C();
            return;
        }
        j.a(number.doubleValue());
        cVar.a(number);
    }
}
