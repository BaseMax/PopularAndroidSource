package com.koushikdutta.async;

import com.koushikdutta.async.a.d;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

public class y implements d {
    static final /* synthetic */ boolean d = (!y.class.desiredAssertionStatus());

    /* renamed from: a  reason: collision with root package name */
    Charset f4855a;

    /* renamed from: b  reason: collision with root package name */
    l f4856b;
    a c;

    public interface a {
        void onStringAvailable(String str);
    }

    public y() {
        this(null);
    }

    public y(Charset charset) {
        this.f4856b = new l();
        this.f4855a = charset;
    }

    public void setLineCallback(a aVar) {
        this.c = aVar;
    }

    public a getLineCallback() {
        return this.c;
    }

    public void onDataAvailable(n nVar, l lVar) {
        ByteBuffer allocate = ByteBuffer.allocate(lVar.remaining());
        while (lVar.remaining() > 0) {
            byte b2 = lVar.get();
            if (b2 != 10) {
                allocate.put(b2);
            } else if (d || this.c != null) {
                allocate.flip();
                this.f4856b.add(allocate);
                this.c.onStringAvailable(this.f4856b.readString(this.f4855a));
                this.f4856b = new l();
                return;
            } else {
                throw new AssertionError();
            }
        }
        allocate.flip();
        this.f4856b.add(allocate);
    }
}
