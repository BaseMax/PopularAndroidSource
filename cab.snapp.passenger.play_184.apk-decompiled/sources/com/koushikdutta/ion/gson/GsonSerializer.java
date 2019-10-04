package com.koushikdutta.ion.gson;

import com.google.gson.e;
import com.google.gson.stream.JsonReader;
import com.koushikdutta.async.af;
import com.koushikdutta.async.b.j;
import com.koushikdutta.async.c.a;
import com.koushikdutta.async.c.b;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.io.ByteArrayOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.lang.reflect.Type;

public class GsonSerializer<T> implements a<T> {
    e gson;
    Type type;

    public GsonSerializer(e eVar, Class<T> cls) {
        this.gson = eVar;
        this.type = cls;
    }

    public GsonSerializer(e eVar, com.google.gson.b.a<T> aVar) {
        this.gson = eVar;
        this.type = aVar.getType();
    }

    public com.koushikdutta.async.b.e<T> parse(n nVar) {
        return (com.koushikdutta.async.b.e) new b().parse(nVar).then(new j<T, l>() {
            /* access modifiers changed from: protected */
            public void transform(l lVar) throws Exception {
                setComplete(GsonSerializer.this.gson.fromJson(new JsonReader(new InputStreamReader(new com.koushikdutta.async.d.a(lVar))), GsonSerializer.this.type));
            }
        });
    }

    public void write(q qVar, T t, com.koushikdutta.async.a.a aVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream);
        this.gson.toJson((Object) t, this.type, (Appendable) outputStreamWriter);
        try {
            outputStreamWriter.flush();
            af.writeAll(qVar, byteArrayOutputStream.toByteArray(), aVar);
        } catch (Exception e) {
            throw new AssertionError(e);
        }
    }

    public Type getType() {
        return this.type;
    }
}
