package com.koushikdutta.async.c;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.b.j;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.lang.reflect.Type;
import org.a.c;

public final class e implements a<c> {
    public final com.koushikdutta.async.b.e<c> parse(n nVar) {
        return (com.koushikdutta.async.b.e) new f().parse(nVar).then(new j<c, String>() {
            public final /* synthetic */ void transform(Object obj) throws Exception {
                setComplete(new c((String) obj));
            }
        });
    }

    public final void write(q qVar, c cVar, a aVar) {
        new f().write(qVar, cVar.toString(), aVar);
    }

    public final Type getType() {
        return c.class;
    }
}
