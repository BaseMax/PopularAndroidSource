package com.koushikdutta.async.http.a;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.af;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.io.File;

public final class c implements a<File> {
    public static final String CONTENT_TYPE = "application/binary";

    /* renamed from: a  reason: collision with root package name */
    File f4609a;

    /* renamed from: b  reason: collision with root package name */
    String f4610b = "application/binary";

    public c(File file) {
        this.f4609a = file;
    }

    public c(File file, String str) {
        this.f4609a = file;
        this.f4610b = str;
    }

    public final void write(d dVar, q qVar, a aVar) {
        af.pump(this.f4609a, qVar, aVar);
    }

    public final void parse(n nVar, a aVar) {
        throw new AssertionError("not implemented");
    }

    public final String getContentType() {
        return this.f4610b;
    }

    public final void setContentType(String str) {
        this.f4610b = str;
    }

    public final boolean readFullyOnRequest() {
        throw new AssertionError("not implemented");
    }

    public final int length() {
        return (int) this.f4609a.length();
    }

    public final File get() {
        return this.f4609a;
    }
}
