package com.koushikdutta.async.http.a;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.af;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.io.InputStream;

public final class h implements a<InputStream> {
    public static final String CONTENT_TYPE = "application/binary";

    /* renamed from: a  reason: collision with root package name */
    InputStream f4633a;

    /* renamed from: b  reason: collision with root package name */
    int f4634b;
    String c = "application/binary";

    public h(InputStream inputStream, int i) {
        this.f4633a = inputStream;
        this.f4634b = i;
    }

    public final void write(d dVar, q qVar, a aVar) {
        InputStream inputStream = this.f4633a;
        int i = this.f4634b;
        af.pump(inputStream, i < 0 ? 2147483647L : (long) i, qVar, aVar);
    }

    public final void parse(n nVar, a aVar) {
        throw new AssertionError("not implemented");
    }

    public final String getContentType() {
        return this.c;
    }

    public final h setContentType(String str) {
        this.c = str;
        return this;
    }

    public final boolean readFullyOnRequest() {
        throw new AssertionError("not implemented");
    }

    public final int length() {
        return this.f4634b;
    }

    public final InputStream get() {
        return this.f4633a;
    }
}
