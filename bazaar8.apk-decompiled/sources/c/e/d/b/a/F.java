package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.stream.JsonToken;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* compiled from: TypeAdapters */
class F extends x<Calendar> {
    public Calendar a(b bVar) {
        if (bVar.K() == JsonToken.NULL) {
            bVar.H();
            return null;
        }
        bVar.t();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (bVar.K() != JsonToken.END_OBJECT) {
            String G = bVar.G();
            int E = bVar.E();
            if ("year".equals(G)) {
                i2 = E;
            } else if ("month".equals(G)) {
                i3 = E;
            } else if ("dayOfMonth".equals(G)) {
                i4 = E;
            } else if ("hourOfDay".equals(G)) {
                i5 = E;
            } else if ("minute".equals(G)) {
                i6 = E;
            } else if ("second".equals(G)) {
                i7 = E;
            }
        }
        bVar.y();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(i2, i3, i4, i5, i6, i7);
        return gregorianCalendar;
    }

    public void a(c cVar, Calendar calendar) {
        if (calendar == null) {
            cVar.C();
            return;
        }
        cVar.v();
        cVar.e("year");
        cVar.h((long) calendar.get(1));
        cVar.e("month");
        cVar.h((long) calendar.get(2));
        cVar.e("dayOfMonth");
        cVar.h((long) calendar.get(5));
        cVar.e("hourOfDay");
        cVar.h((long) calendar.get(11));
        cVar.e("minute");
        cVar.h((long) calendar.get(12));
        cVar.e("second");
        cVar.h((long) calendar.get(13));
        cVar.x();
    }
}
