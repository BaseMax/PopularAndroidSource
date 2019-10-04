package com.google.gson.internal.bind;

import com.google.gson.p;
import com.google.gson.q;
import com.google.gson.r;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class g extends q<Time> {
    public static final r FACTORY = new TimeTypeAdapter$1();

    /* renamed from: a  reason: collision with root package name */
    private final DateFormat f4174a = new SimpleDateFormat("hh:mm:ss a");

    public final synchronized Time read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        try {
            return new Time(this.f4174a.parse(jsonReader.nextString()).getTime());
        } catch (ParseException e) {
            throw new p((Throwable) e);
        }
    }

    public final synchronized void write(JsonWriter jsonWriter, Time time) throws IOException {
        jsonWriter.value(time == null ? null : this.f4174a.format(time));
    }
}
