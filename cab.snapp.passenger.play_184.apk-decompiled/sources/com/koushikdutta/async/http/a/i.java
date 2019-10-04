package com.koushikdutta.async.http.a;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.af;
import com.koushikdutta.async.http.t;
import com.koushikdutta.async.q;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public abstract class i extends g {
    /* access modifiers changed from: protected */
    public abstract InputStream a() throws IOException;

    public i(String str, long j, List<t> list) {
        super(str, j, list);
    }

    public void write(q qVar, a aVar) {
        try {
            af.pump(a(), qVar, aVar);
        } catch (Exception e) {
            aVar.onCompleted(e);
        }
    }
}
