package c.e.d.b.a;

import c.e.d.b.a.a.a;
import c.e.d.b.r;
import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import c.e.d.y;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonToken;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* renamed from: c.e.d.b.a.b  reason: case insensitive filesystem */
/* compiled from: DateTypeAdapter */
public final class C1008b extends x<Date> {

    /* renamed from: a  reason: collision with root package name */
    public static final y f11751a = new DateTypeAdapter$1();

    /* renamed from: b  reason: collision with root package name */
    public final List<DateFormat> f11752b = new ArrayList();

    public C1008b() {
        this.f11752b.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f11752b.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (r.c()) {
            this.f11752b.add(c.e.d.b.x.a(2, 2));
        }
    }

    public Date a(b bVar) {
        if (bVar.K() != JsonToken.NULL) {
            return a(bVar.I());
        }
        bVar.H();
        return null;
    }

    public final synchronized Date a(String str) {
        for (DateFormat parse : this.f11752b) {
            try {
                return parse.parse(str);
            } catch (ParseException unused) {
            }
        }
        try {
            return a.a(str, new ParsePosition(0));
        } catch (ParseException e2) {
            throw new JsonSyntaxException(str, e2);
        }
    }

    public synchronized void a(c cVar, Date date) {
        if (date == null) {
            cVar.C();
        } else {
            cVar.h(this.f11752b.get(0).format(date));
        }
    }
}
