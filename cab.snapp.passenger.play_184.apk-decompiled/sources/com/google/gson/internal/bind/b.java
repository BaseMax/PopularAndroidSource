package com.google.gson.internal.bind;

import com.google.gson.internal.bind.a.a;
import com.google.gson.internal.d;
import com.google.gson.internal.i;
import com.google.gson.p;
import com.google.gson.q;
import com.google.gson.r;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public final class b extends q<Date> {
    public static final r FACTORY = new DateTypeAdapter$1();

    /* renamed from: a  reason: collision with root package name */
    private final List<DateFormat> f4166a = new ArrayList();

    public b() {
        this.f4166a.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f4166a.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (d.isJava9OrLater()) {
            this.f4166a.add(i.getUSDateTimeFormat(2, 2));
        }
    }

    public final Date read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() != JsonToken.NULL) {
            return a(jsonReader.nextString());
        }
        jsonReader.nextNull();
        return null;
    }

    private synchronized Date a(String str) {
        for (DateFormat parse : this.f4166a) {
            try {
                return parse.parse(str);
            } catch (ParseException unused) {
            }
        }
        try {
            return a.parse(str, new ParsePosition(0));
        } catch (ParseException e) {
            throw new p(str, e);
        }
    }

    public final synchronized void write(JsonWriter jsonWriter, Date date) throws IOException {
        if (date == null) {
            jsonWriter.nullValue();
        } else {
            jsonWriter.value(this.f4166a.get(0).format(date));
        }
    }
}
