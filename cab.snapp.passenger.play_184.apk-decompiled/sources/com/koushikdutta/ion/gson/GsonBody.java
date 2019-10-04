package com.koushikdutta.ion.gson;

import com.google.gson.JsonElement;
import com.google.gson.e;
import com.koushikdutta.async.af;
import com.koushikdutta.async.http.a.a;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.io.ByteArrayOutputStream;
import java.io.OutputStreamWriter;

public class GsonBody<T extends JsonElement> implements a<T> {
    public static final String CONTENT_TYPE = "application/json";
    e gson;
    T json;
    byte[] mBodyBytes;

    public String getContentType() {
        return "application/json";
    }

    public boolean readFullyOnRequest() {
        return true;
    }

    public GsonBody(e eVar, T t) {
        this.json = t;
        this.gson = eVar;
    }

    public void parse(n nVar, com.koushikdutta.async.a.a aVar) {
        throw new AssertionError("not implemented");
    }

    public void write(d dVar, q qVar, com.koushikdutta.async.a.a aVar) {
        if (this.mBodyBytes == null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this.gson.toJson((JsonElement) this.json, (Appendable) new OutputStreamWriter(byteArrayOutputStream));
            this.mBodyBytes = byteArrayOutputStream.toByteArray();
        }
        af.writeAll(qVar, this.mBodyBytes, aVar);
    }

    public int length() {
        if (this.mBodyBytes == null) {
            this.mBodyBytes = this.json.toString().getBytes();
        }
        return this.mBodyBytes.length;
    }

    public T get() {
        return this.json;
    }
}
