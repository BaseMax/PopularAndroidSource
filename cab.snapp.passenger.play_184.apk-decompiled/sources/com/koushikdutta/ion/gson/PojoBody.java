package com.koushikdutta.ion.gson;

import com.google.gson.e;
import com.koushikdutta.async.af;
import com.koushikdutta.async.http.a.a;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.io.ByteArrayOutputStream;
import java.io.OutputStreamWriter;
import java.lang.reflect.Type;

public class PojoBody<T> implements a<T> {
    public static final String CONTENT_TYPE = "application/json";
    byte[] bodyBytes;
    e gson;
    T pojo;
    Type type;

    public String getContentType() {
        return "application/json";
    }

    public void parse(n nVar, com.koushikdutta.async.a.a aVar) {
    }

    public boolean readFullyOnRequest() {
        return true;
    }

    public PojoBody(e eVar, T t, com.google.gson.b.a<T> aVar) {
        this.pojo = t;
        if (aVar != null) {
            this.type = aVar.getType();
        }
        this.gson = eVar;
        if (t.getClass().isPrimitive() || (t instanceof String)) {
            throw new AssertionError("must provide a non-primitive type");
        }
    }

    /* access modifiers changed from: package-private */
    public byte[] getBodyBytes() {
        byte[] bArr = this.bodyBytes;
        if (bArr != null) {
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream);
        Type type2 = this.type;
        if (type2 == null) {
            this.gson.toJson((Object) this.pojo, (Appendable) outputStreamWriter);
        } else {
            this.gson.toJson((Object) this.pojo, type2, (Appendable) outputStreamWriter);
        }
        try {
            outputStreamWriter.flush();
            byteArrayOutputStream.flush();
        } catch (Exception unused) {
        }
        this.bodyBytes = byteArrayOutputStream.toByteArray();
        return this.bodyBytes;
    }

    public void write(d dVar, q qVar, com.koushikdutta.async.a.a aVar) {
        af.writeAll(qVar, getBodyBytes(), aVar);
    }

    public int length() {
        return getBodyBytes().length;
    }

    public T get() {
        return this.pojo;
    }
}
