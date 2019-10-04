package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import c.e.d.y;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonToken;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* renamed from: c.e.d.b.a.j  reason: case insensitive filesystem */
/* compiled from: SqlDateTypeAdapter */
public final class C1016j extends x<Date> {

    /* renamed from: a  reason: collision with root package name */
    public static final y f11764a = new SqlDateTypeAdapter$1();

    /* renamed from: b  reason: collision with root package name */
    public final DateFormat f11765b = new SimpleDateFormat("MMM d, yyyy");

    public synchronized Date a(b bVar) {
        if (bVar.K() == JsonToken.NULL) {
            bVar.H();
            return null;
        }
        try {
            return new Date(this.f11765b.parse(bVar.I()).getTime());
        } catch (ParseException e2) {
            throw new JsonSyntaxException((Throwable) e2);
        }
    }

    public synchronized void a(c cVar, Date date) {
        cVar.h(date == null ? null : this.f11765b.format(date));
    }
}
