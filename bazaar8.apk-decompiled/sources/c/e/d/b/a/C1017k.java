package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import c.e.d.y;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonToken;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* renamed from: c.e.d.b.a.k  reason: case insensitive filesystem */
/* compiled from: TimeTypeAdapter */
public final class C1017k extends x<Time> {

    /* renamed from: a  reason: collision with root package name */
    public static final y f11766a = new TimeTypeAdapter$1();

    /* renamed from: b  reason: collision with root package name */
    public final DateFormat f11767b = new SimpleDateFormat("hh:mm:ss a");

    public synchronized Time a(b bVar) {
        if (bVar.K() == JsonToken.NULL) {
            bVar.H();
            return null;
        }
        try {
            return new Time(this.f11767b.parse(bVar.I()).getTime());
        } catch (ParseException e2) {
            throw new JsonSyntaxException((Throwable) e2);
        }
    }

    public synchronized void a(c cVar, Time time) {
        cVar.h(time == null ? null : this.f11767b.format(time));
    }
}
