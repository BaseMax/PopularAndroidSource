package com.koushikdutta.async.http.a;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.http.n;
import com.koushikdutta.async.http.s;
import com.koushikdutta.async.http.t;
import com.koushikdutta.async.q;
import io.fabric.sdk.android.services.network.c;
import java.io.File;
import java.util.List;
import java.util.Locale;

public class g {
    public static final String CONTENT_DISPOSITION = "Content-Disposition";
    static final /* synthetic */ boolean d = (!g.class.desiredAssertionStatus());

    /* renamed from: a  reason: collision with root package name */
    private long f4631a = -1;

    /* renamed from: b  reason: collision with root package name */
    n f4632b;
    s c;

    public g(n nVar) {
        this.f4632b = nVar;
        this.c = s.parseSemicolonDelimited(this.f4632b.get(CONTENT_DISPOSITION));
    }

    public String getName() {
        return this.c.getString("name");
    }

    public g(String str, long j, List<t> list) {
        this.f4631a = j;
        this.f4632b = new n();
        StringBuilder sb = new StringBuilder(String.format(Locale.ENGLISH, "form-data; name=\"%s\"", new Object[]{str}));
        if (list != null) {
            for (t next : list) {
                sb.append(String.format(Locale.ENGLISH, "; %s=\"%s\"", new Object[]{next.getName(), next.getValue()}));
            }
        }
        this.f4632b.set(CONTENT_DISPOSITION, sb.toString());
        this.c = s.parseSemicolonDelimited(this.f4632b.get(CONTENT_DISPOSITION));
    }

    public n getRawHeaders() {
        return this.f4632b;
    }

    public String getContentType() {
        return this.f4632b.get(c.HEADER_CONTENT_TYPE);
    }

    public void setContentType(String str) {
        this.f4632b.set(c.HEADER_CONTENT_TYPE, str);
    }

    public String getFilename() {
        String string = this.c.getString("filename");
        if (string == null) {
            return null;
        }
        return new File(string).getName();
    }

    public boolean isFile() {
        return this.c.containsKey("filename");
    }

    public long length() {
        return this.f4631a;
    }

    public void write(q qVar, a aVar) {
        if (!d) {
            throw new AssertionError();
        }
    }
}
