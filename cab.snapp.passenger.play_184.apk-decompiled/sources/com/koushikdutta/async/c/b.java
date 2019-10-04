package com.koushikdutta.async.c;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.af;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.i;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.lang.reflect.Type;

public final class b implements a<l> {
    public final e<l> parse(final n nVar) {
        final l lVar = new l();
        final AnonymousClass1 r1 = new i<l>() {
            public final void cancelCleanup() {
                nVar.close();
            }
        };
        nVar.setDataCallback(new d() {
            public final void onDataAvailable(n nVar, l lVar) {
                lVar.get(lVar);
            }
        });
        nVar.setEndCallback(new a() {
            public final void onCompleted(Exception exc) {
                if (exc != null) {
                    r1.setComplete(exc);
                    return;
                }
                try {
                    r1.setComplete(lVar);
                } catch (Exception e) {
                    r1.setComplete(e);
                }
            }
        });
        return r1;
    }

    public final void write(q qVar, l lVar, a aVar) {
        af.writeAll(qVar, lVar, aVar);
    }

    public final Type getType() {
        return l.class;
    }
}
