package com.koushikdutta.ion;

import com.koushikdutta.async.af;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.i;
import com.koushikdutta.async.c.a;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.lang.reflect.Type;

class DataEmitterParser implements a<n> {
    DataEmitterParser() {
    }

    public e<n> parse(n nVar) {
        i iVar = new i();
        iVar.setComplete(nVar);
        return iVar;
    }

    public void write(q qVar, n nVar, com.koushikdutta.async.a.a aVar) {
        af.pump(nVar, qVar, aVar);
    }

    public Type getType() {
        return n.class;
    }
}
