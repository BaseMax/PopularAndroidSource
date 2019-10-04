package com.google.gson;

import com.google.gson.internal.d;
import com.google.gson.internal.i;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

final class a extends q<Date> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<? extends Date> f4105a;

    /* renamed from: b  reason: collision with root package name */
    private final List<DateFormat> f4106b;

    a(Class<? extends Date> cls, String str) {
        this.f4106b = new ArrayList();
        this.f4105a = a(cls);
        this.f4106b.add(new SimpleDateFormat(str, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f4106b.add(new SimpleDateFormat(str));
        }
    }

    public a(int i, int i2) {
        this(Date.class, i, i2);
    }

    public a(Class<? extends Date> cls, int i, int i2) {
        this.f4106b = new ArrayList();
        this.f4105a = a(cls);
        this.f4106b.add(DateFormat.getDateTimeInstance(i, i2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f4106b.add(DateFormat.getDateTimeInstance(i, i2));
        }
        if (d.isJava9OrLater()) {
            this.f4106b.add(i.getUSDateTimeFormat(i, i2));
        }
    }

    private static Class<? extends Date> a(Class<? extends Date> cls) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            return cls;
        }
        throw new IllegalArgumentException("Date type must be one of " + Date.class + ", " + Timestamp.class + ", or " + java.sql.Date.class + " but was " + cls);
    }

    public final void write(JsonWriter jsonWriter, Date date) throws IOException {
        if (date == null) {
            jsonWriter.nullValue();
            return;
        }
        synchronized (this.f4106b) {
            jsonWriter.value(this.f4106b.get(0).format(date));
        }
    }

    public final Date read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        Date a2 = a(jsonReader.nextString());
        Class<? extends Date> cls = this.f4105a;
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

    private Date a(String str) {
        synchronized (this.f4106b) {
            for (DateFormat parse : this.f4106b) {
                try {
                    Date parse2 = parse.parse(str);
                    return parse2;
                } catch (ParseException unused) {
                }
            }
            try {
                Date parse3 = com.google.gson.internal.bind.a.a.parse(str, new ParsePosition(0));
                return parse3;
            } catch (ParseException e) {
                throw new p(str, e);
            }
        }
    }

    public final String toString() {
        DateFormat dateFormat = this.f4106b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }
}
