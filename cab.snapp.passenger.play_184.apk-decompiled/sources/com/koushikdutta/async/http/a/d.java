package com.koushikdutta.async.http.a;

import com.koushikdutta.async.http.j;
import com.koushikdutta.async.http.t;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

public final class d extends i {

    /* renamed from: a  reason: collision with root package name */
    File f4612a;

    public d(String str, final File file) {
        super(str, (long) ((int) file.length()), new ArrayList<t>() {
            {
                add(new j("filename", file.getName()));
            }
        });
        this.f4612a = file;
    }

    /* access modifiers changed from: protected */
    public final InputStream a() throws IOException {
        return new FileInputStream(this.f4612a);
    }
}
