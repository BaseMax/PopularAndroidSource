package com.koushikdutta.ion.gson;

import com.google.gson.JsonElement;
import com.google.gson.m;
import com.google.gson.stream.JsonReader;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.j;
import com.koushikdutta.async.c.a;
import com.koushikdutta.async.c.b;
import com.koushikdutta.async.c.f;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.nio.charset.Charset;

public abstract class GsonParser<T extends JsonElement> implements a<T> {
    Class<? extends JsonElement> clazz;
    Charset forcedCharset;

    public GsonParser(Class<? extends T> cls) {
        this.clazz = cls;
    }

    public GsonParser(Class<? extends T> cls, Charset charset) {
        this(cls);
        this.forcedCharset = charset;
    }

    public e<T> parse(n nVar) {
        final String charset = nVar.charset();
        return (e) new b().parse(nVar).then(new j<T, l>() {
            /* access modifiers changed from: protected */
            public void transform(l lVar) throws Exception {
                InputStreamReader inputStreamReader;
                m mVar = new m();
                com.koushikdutta.async.d.a aVar = new com.koushikdutta.async.d.a(lVar);
                if (GsonParser.this.forcedCharset != null) {
                    inputStreamReader = new InputStreamReader(aVar, GsonParser.this.forcedCharset);
                } else {
                    String str = charset;
                    if (str != null) {
                        inputStreamReader = new InputStreamReader(aVar, str);
                    } else {
                        inputStreamReader = new InputStreamReader(aVar);
                    }
                }
                JsonElement parse = mVar.parse(new JsonReader(inputStreamReader));
                if (parse.isJsonNull() || parse.isJsonPrimitive()) {
                    throw new com.google.gson.l("unable to parse json");
                } else if (GsonParser.this.clazz.isInstance(parse)) {
                    setComplete(null, parse);
                } else {
                    throw new ClassCastException(parse.getClass().getCanonicalName() + " can not be casted to " + GsonParser.this.clazz.getCanonicalName());
                }
            }
        });
    }

    public void write(q qVar, T t, com.koushikdutta.async.a.a aVar) {
        new f().write(qVar, t.toString(), aVar);
    }

    public Type getType() {
        return this.clazz;
    }
}
