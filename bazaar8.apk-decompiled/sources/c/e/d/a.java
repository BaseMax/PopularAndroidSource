package c.e.d;

import c.e.d.b.r;
import c.e.d.b.x;
import c.e.d.d.b;
import c.e.d.d.c;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonToken;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* compiled from: DefaultDateTypeAdapter */
public final class a extends x<Date> {

    /* renamed from: a  reason: collision with root package name */
    public final Class<? extends Date> f11721a;

    /* renamed from: b  reason: collision with root package name */
    public final List<DateFormat> f11722b = new ArrayList();

    public a(Class<? extends Date> cls, String str) {
        a(cls);
        this.f11721a = cls;
        this.f11722b.add(new SimpleDateFormat(str, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f11722b.add(new SimpleDateFormat(str));
        }
    }

    public String toString() {
        DateFormat dateFormat = this.f11722b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }

    public static Class<? extends Date> a(Class<? extends Date> cls) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            return cls;
        }
        throw new IllegalArgumentException("Date type must be one of " + Date.class + ", " + Timestamp.class + ", or " + java.sql.Date.class + " but was " + cls);
    }

    public void a(c cVar, Date date) {
        if (date == null) {
            cVar.C();
            return;
        }
        synchronized (this.f11722b) {
            cVar.h(this.f11722b.get(0).format(date));
        }
    }

    public a(Class<? extends Date> cls, int i2, int i3) {
        a(cls);
        this.f11721a = cls;
        this.f11722b.add(DateFormat.getDateTimeInstance(i2, i3, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f11722b.add(DateFormat.getDateTimeInstance(i2, i3));
        }
        if (r.c()) {
            this.f11722b.add(x.a(i2, i3));
        }
    }

    public Date a(b bVar) {
        if (bVar.K() == JsonToken.NULL) {
            bVar.H();
            return null;
        }
        Date a2 = a(bVar.I());
        Class<? extends Date> cls = this.f11721a;
        if (cls == Date.class) {
            return a2;
        }
        if (cls == Timestamp.class) {
            return new Timestamp(a2.getTime());
        }
        if (cls == java.sql.Date.class) {
            return new java.sql.Date(a2.getTime());
        }
        throw new AssertionError();
    }

    public final Date a(String str) {
        synchronized (this.f11722b) {
            for (DateFormat parse : this.f11722b) {
                try {
                    Date parse2 = parse.parse(str);
                    return parse2;
                } catch (ParseException unused) {
                }
            }
            try {
                Date a2 = c.e.d.b.a.a.a.a(str, new ParsePosition(0));
                return a2;
            } catch (ParseException e2) {
                throw new JsonSyntaxException(str, e2);
            }
        }
    }
}
