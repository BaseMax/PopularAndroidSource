package com.koushikdutta.ion;

import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.j;
import com.koushikdutta.async.c.a;
import com.koushikdutta.async.c.b;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.io.InputStream;
import java.lang.reflect.Type;

class InputStreamParser implements a<InputStream> {
    InputStreamParser() {
    }

    public e<InputStream> parse(n nVar) {
        return (e) new b().parse(nVar).then(new j<InputStream, l>() {
            /* access modifiers changed from: protected */
            public void transform(l lVar) throws Exception {
                setComplete(new com.koushikdutta.async.d.a(lVar));
            }
        });
    }

    public void write(q qVar, InputStream inputStream, com.koushikdutta.async.a.a aVar) {
        throw new AssertionError("not implemented");
    }

    public Type getType() {
        return InputStream.class;
    }
}
