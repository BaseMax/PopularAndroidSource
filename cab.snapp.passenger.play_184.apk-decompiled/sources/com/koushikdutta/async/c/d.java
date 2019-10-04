package com.koushikdutta.async.c;

import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.j;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.lang.reflect.Type;
import org.a.a;

public final class d implements a<a> {
    public final e<a> parse(n nVar) {
        return (e) new f().parse(nVar).then(new j<a, String>() {
            public final /* synthetic */ void transform(Object obj) throws Exception {
                setComplete(new a((String) obj));
            }
        });
    }

    public final void write(q qVar, a aVar, com.koushikdutta.async.a.a aVar2) {
        new f().write(qVar, aVar.toString(), aVar2);
    }

    public final Type getType() {
        return a.class;
    }
}
