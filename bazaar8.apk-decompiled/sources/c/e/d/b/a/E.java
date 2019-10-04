package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import java.sql.Timestamp;
import java.util.Date;

/* compiled from: TypeAdapters */
class E extends x<Timestamp> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f11728a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ TypeAdapters$26 f11729b;

    public E(TypeAdapters$26 typeAdapters$26, x xVar) {
        this.f11729b = typeAdapters$26;
        this.f11728a = xVar;
    }

    public Timestamp a(b bVar) {
        Date date = (Date) this.f11728a.a(bVar);
        if (date != null) {
            return new Timestamp(date.getTime());
        }
        return null;
    }

    public void a(c cVar, Timestamp timestamp) {
        this.f11728a.a(cVar, timestamp);
    }
}
