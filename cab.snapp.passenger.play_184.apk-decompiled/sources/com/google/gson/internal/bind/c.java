package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.k;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import java.util.Map;

public final class c extends JsonReader {

    /* renamed from: a  reason: collision with root package name */
    private static final Reader f4167a = new Reader() {
        public final int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }

        public final void close() throws IOException {
            throw new AssertionError();
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final Object f4168b = new Object();
    private Object[] c = new Object[32];
    private int d = 0;
    private String[] e = new String[32];
    private int[] f = new int[32];

    public c(JsonElement jsonElement) {
        super(f4167a);
        a((Object) jsonElement);
    }

    public final void beginArray() throws IOException {
        a(JsonToken.BEGIN_ARRAY);
        a((Object) ((JsonArray) a()).iterator());
        this.f[this.d - 1] = 0;
    }

    public final void endArray() throws IOException {
        a(JsonToken.END_ARRAY);
        b();
        b();
        int i = this.d;
        if (i > 0) {
            int[] iArr = this.f;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    public final void beginObject() throws IOException {
        a(JsonToken.BEGIN_OBJECT);
        a((Object) ((JsonObject) a()).entrySet().iterator());
    }

    public final void endObject() throws IOException {
        a(JsonToken.END_OBJECT);
        b();
        b();
        int i = this.d;
        if (i > 0) {
            int[] iArr = this.f;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    public final boolean hasNext() throws IOException {
        JsonToken peek = peek();
        return (peek == JsonToken.END_OBJECT || peek == JsonToken.END_ARRAY) ? false : true;
    }

    public final JsonToken peek() throws IOException {
        while (this.d != 0) {
            Object a2 = a();
            if (a2 instanceof Iterator) {
                boolean z = this.c[this.d - 2] instanceof JsonObject;
                Iterator it = (Iterator) a2;
                if (!it.hasNext()) {
                    return z ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
                }
                if (z) {
                    return JsonToken.NAME;
                }
                a(it.next());
            } else if (a2 instanceof JsonObject) {
                return JsonToken.BEGIN_OBJECT;
            } else {
                if (a2 instanceof JsonArray) {
                    return JsonToken.BEGIN_ARRAY;
                }
                if (a2 instanceof JsonPrimitive) {
                    JsonPrimitive jsonPrimitive = (JsonPrimitive) a2;
                    if (jsonPrimitive.isString()) {
                        return JsonToken.STRING;
                    }
                    if (jsonPrimitive.isBoolean()) {
                        return JsonToken.BOOLEAN;
                    }
                    if (jsonPrimitive.isNumber()) {
                        return JsonToken.NUMBER;
                    }
                    throw new AssertionError();
                } else if (a2 instanceof k) {
                    return JsonToken.NULL;
                } else {
                    if (a2 == f4168b) {
                        throw new IllegalStateException("JsonReader is closed");
                    }
                    throw new AssertionError();
                }
            }
        }
        return JsonToken.END_DOCUMENT;
    }

    private Object a() {
        return this.c[this.d - 1];
    }

    private Object b() {
        Object[] objArr = this.c;
        int i = this.d - 1;
        this.d = i;
        Object obj = objArr[i];
        objArr[this.d] = null;
        return obj;
    }

    private void a(JsonToken jsonToken) throws IOException {
        if (peek() != jsonToken) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + peek() + c());
        }
    }

    public final String nextName() throws IOException {
        a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) a()).next();
        String str = (String) entry.getKey();
        this.e[this.d - 1] = str;
        a(entry.getValue());
        return str;
    }

    public final String nextString() throws IOException {
        JsonToken peek = peek();
        if (peek == JsonToken.STRING || peek == JsonToken.NUMBER) {
            String asString = ((JsonPrimitive) b()).getAsString();
            int i = this.d;
            if (i > 0) {
                int[] iArr = this.f;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return asString;
        }
        throw new IllegalStateException("Expected " + JsonToken.STRING + " but was " + peek + c());
    }

    public final boolean nextBoolean() throws IOException {
        a(JsonToken.BOOLEAN);
        boolean asBoolean = ((JsonPrimitive) b()).getAsBoolean();
        int i = this.d;
        if (i > 0) {
            int[] iArr = this.f;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return asBoolean;
    }

    public final void nextNull() throws IOException {
        a(JsonToken.NULL);
        b();
        int i = this.d;
        if (i > 0) {
            int[] iArr = this.f;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    public final double nextDouble() throws IOException {
        JsonToken peek = peek();
        if (peek == JsonToken.NUMBER || peek == JsonToken.STRING) {
            double asDouble = ((JsonPrimitive) a()).getAsDouble();
            if (isLenient() || (!Double.isNaN(asDouble) && !Double.isInfinite(asDouble))) {
                b();
                int i = this.d;
                if (i > 0) {
                    int[] iArr = this.f;
                    int i2 = i - 1;
                    iArr[i2] = iArr[i2] + 1;
                }
                return asDouble;
            }
            throw new NumberFormatException("JSON forbids NaN and infinities: ".concat(String.valueOf(asDouble)));
        }
        throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + peek + c());
    }

    public final long nextLong() throws IOException {
        JsonToken peek = peek();
        if (peek == JsonToken.NUMBER || peek == JsonToken.STRING) {
            long asLong = ((JsonPrimitive) a()).getAsLong();
            b();
            int i = this.d;
            if (i > 0) {
                int[] iArr = this.f;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return asLong;
        }
        throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + peek + c());
    }

    public final int nextInt() throws IOException {
        JsonToken peek = peek();
        if (peek == JsonToken.NUMBER || peek == JsonToken.STRING) {
            int asInt = ((JsonPrimitive) a()).getAsInt();
            b();
            int i = this.d;
            if (i > 0) {
                int[] iArr = this.f;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return asInt;
        }
        throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + peek + c());
    }

    public final void close() throws IOException {
        this.c = new Object[]{f4168b};
        this.d = 1;
    }

    public final void skipValue() throws IOException {
        if (peek() == JsonToken.NAME) {
            nextName();
            this.e[this.d - 2] = "null";
        } else {
            b();
            if (this.d > 0) {
                this.e[r0 - 1] = "null";
            }
        }
        int i = this.d;
        if (i > 0) {
            int[] iArr = this.f;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    public final String toString() {
        return getClass().getSimpleName();
    }

    public final void promoteNameToValue() throws IOException {
        a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) a()).next();
        a(entry.getValue());
        a((Object) new JsonPrimitive((String) entry.getKey()));
    }

    private void a(Object obj) {
        int i = this.d;
        Object[] objArr = this.c;
        if (i == objArr.length) {
            Object[] objArr2 = new Object[(i * 2)];
            int[] iArr = new int[(i * 2)];
            String[] strArr = new String[(i * 2)];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            System.arraycopy(this.f, 0, iArr, 0, this.d);
            System.arraycopy(this.e, 0, strArr, 0, this.d);
            this.c = objArr2;
            this.f = iArr;
            this.e = strArr;
        }
        Object[] objArr3 = this.c;
        int i2 = this.d;
        this.d = i2 + 1;
        objArr3[i2] = obj;
    }

    public final String getPath() {
        StringBuilder sb = new StringBuilder("$");
        int i = 0;
        while (i < this.d) {
            Object[] objArr = this.c;
            if (objArr[i] instanceof JsonArray) {
                i++;
                if (objArr[i] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.f[i]);
                    sb.append(']');
                }
            } else if (objArr[i] instanceof JsonObject) {
                i++;
                if (objArr[i] instanceof Iterator) {
                    sb.append('.');
                    String[] strArr = this.e;
                    if (strArr[i] != null) {
                        sb.append(strArr[i]);
                    }
                }
            }
            i++;
        }
        return sb.toString();
    }

    private String c() {
        return " at path " + getPath();
    }
}
