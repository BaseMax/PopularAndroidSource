package com.koushikdutta.async.c;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.j;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.lang.reflect.Type;
import java.nio.charset.Charset;

public final class f implements a<String> {

    /* renamed from: a  reason: collision with root package name */
    Charset f4499a;

    public f() {
    }

    public f(Charset charset) {
        this.f4499a = charset;
    }

    public final e<String> parse(n nVar) {
        final String charset = nVar.charset();
        return (e) new b().parse(nVar).then(new j<String, l>() {
            public final /* synthetic */ void transform(Object obj) throws Exception {
                l lVar = (l) obj;
                Charset charset = f.this.f4499a;
                if (charset == null) {
                    String str = charset;
                    if (str != null) {
                        charset = Charset.forName(str);
                    }
                }
                setComplete(lVar.readString(charset));
            }
        });
    }

    public final void write(q qVar, String str, a aVar) {
        new b().write(qVar, new l(str.getBytes()), aVar);
    }

    public final Type getType() {
        return String.class;
    }
}
