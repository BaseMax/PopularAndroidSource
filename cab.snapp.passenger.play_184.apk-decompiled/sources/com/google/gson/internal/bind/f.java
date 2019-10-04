package com.google.gson.internal.bind;

import com.google.gson.p;
import com.google.gson.q;
import com.google.gson.r;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class f extends q<Date> {
    public static final r FACTORY = new SqlDateTypeAdapter$1();

    /* renamed from: a  reason: collision with root package name */
    private final DateFormat f4173a = new SimpleDateFormat("MMM d, yyyy");

    public final synchronized Date read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        try {
            return new Date(this.f4173a.parse(jsonReader.nextString()).getTime());
        } catch (ParseException e) {
            throw new p((Throwable) e);
        }
    }

    public final synchronized void write(JsonWriter jsonWriter, Date date) throws IOException {
        jsonWriter.value(date == null ? null : this.f4173a.format(date));
    }
}
