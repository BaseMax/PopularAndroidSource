package com.google.gson.internal.bind;

import com.google.gson.b.a;
import com.google.gson.e;
import com.google.gson.q;
import com.google.gson.r;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

class TypeAdapters$26 implements r {
    TypeAdapters$26() {
    }

    public final <T> q<T> create(e eVar, a<T> aVar) {
        if (aVar.getRawType() != Timestamp.class) {
            return null;
        }
        final q<Date> adapter = eVar.getAdapter(Date.class);
        return new q<Timestamp>() {
            public final Timestamp read(JsonReader jsonReader) throws IOException {
                Date date = (Date) adapter.read(jsonReader);
                if (date != null) {
                    return new Timestamp(date.getTime());
                }
                return null;
            }

            public final void write(JsonWriter jsonWriter, Timestamp timestamp) throws IOException {
                adapter.write(jsonWriter, timestamp);
            }
        };
    }
}
