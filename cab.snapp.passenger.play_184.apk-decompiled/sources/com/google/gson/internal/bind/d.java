package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.k;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class d extends JsonWriter {

    /* renamed from: a  reason: collision with root package name */
    private static final Writer f4169a = new Writer() {
        public final void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }

        public final void flush() throws IOException {
            throw new AssertionError();
        }

        public final void close() throws IOException {
            throw new AssertionError();
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final JsonPrimitive f4170b = new JsonPrimitive("closed");
    private final List<JsonElement> c = new ArrayList();
    private String d;
    private JsonElement e = k.INSTANCE;

    public final void flush() throws IOException {
    }

    public d() {
        super(f4169a);
    }

    public final JsonElement get() {
        if (this.c.isEmpty()) {
            return this.e;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.c);
    }

    private JsonElement a() {
        List<JsonElement> list = this.c;
        return list.get(list.size() - 1);
    }

    private void a(JsonElement jsonElement) {
        if (this.d != null) {
            if (!jsonElement.isJsonNull() || getSerializeNulls()) {
                ((JsonObject) a()).add(this.d, jsonElement);
            }
            this.d = null;
        } else if (this.c.isEmpty()) {
            this.e = jsonElement;
        } else {
            JsonElement a2 = a();
            if (a2 instanceof JsonArray) {
                ((JsonArray) a2).add(jsonElement);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public final JsonWriter beginArray() throws IOException {
        JsonArray jsonArray = new JsonArray();
        a(jsonArray);
        this.c.add(jsonArray);
        return this;
    }

    public final JsonWriter endArray() throws IOException {
        if (this.c.isEmpty() || this.d != null) {
            throw new IllegalStateException();
        } else if (a() instanceof JsonArray) {
            List<JsonElement> list = this.c;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public final JsonWriter beginObject() throws IOException {
        JsonObject jsonObject = new JsonObject();
        a(jsonObject);
        this.c.add(jsonObject);
        return this;
    }

    public final JsonWriter endObject() throws IOException {
        if (this.c.isEmpty() || this.d != null) {
            throw new IllegalStateException();
        } else if (a() instanceof JsonObject) {
            List<JsonElement> list = this.c;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public final JsonWriter name(String str) throws IOException {
        if (this.c.isEmpty() || this.d != null) {
            throw new IllegalStateException();
        } else if (a() instanceof JsonObject) {
            this.d = str;
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public final JsonWriter value(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        a(new JsonPrimitive(str));
        return this;
    }

    public final JsonWriter nullValue() throws IOException {
        a(k.INSTANCE);
        return this;
    }

    public final JsonWriter value(boolean z) throws IOException {
        a(new JsonPrimitive(Boolean.valueOf(z)));
        return this;
    }

    public final JsonWriter value(Boolean bool) throws IOException {
        if (bool == null) {
            return nullValue();
        }
        a(new JsonPrimitive(bool));
        return this;
    }

    public final JsonWriter value(double d2) throws IOException {
        if (isLenient() || (!Double.isNaN(d2) && !Double.isInfinite(d2))) {
            a(new JsonPrimitive((Number) Double.valueOf(d2)));
            return this;
        }
        throw new IllegalArgumentException("JSON forbids NaN and infinities: ".concat(String.valueOf(d2)));
    }

    public final JsonWriter value(long j) throws IOException {
        a(new JsonPrimitive((Number) Long.valueOf(j)));
        return this;
    }

    public final JsonWriter value(Number number) throws IOException {
        if (number == null) {
            return nullValue();
        }
        if (!isLenient()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: ".concat(String.valueOf(number)));
            }
        }
        a(new JsonPrimitive(number));
        return this;
    }

    public final void close() throws IOException {
        if (this.c.isEmpty()) {
            this.c.add(f4170b);
            return;
        }
        throw new IOException("Incomplete document");
    }
}
