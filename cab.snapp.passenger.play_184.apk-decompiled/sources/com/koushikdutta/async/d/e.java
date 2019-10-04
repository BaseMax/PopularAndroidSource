package com.koushikdutta.async.d;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.g;
import com.koushikdutta.async.h;
import com.koushikdutta.async.l;
import com.koushikdutta.async.q;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

public class e implements q {

    /* renamed from: b  reason: collision with root package name */
    h f4513b;
    OutputStream c;
    g d;
    boolean e;
    Exception f;
    a g;
    g h;

    public e(h hVar) {
        this(hVar, null);
    }

    public void end() {
        try {
            if (this.c != null) {
                this.c.close();
            }
            reportClose(null);
        } catch (IOException e2) {
            reportClose(e2);
        }
    }

    public e(h hVar, OutputStream outputStream) {
        this.f4513b = hVar;
        setOutputStream(outputStream);
    }

    public void setOutputStream(OutputStream outputStream) {
        this.c = outputStream;
    }

    public OutputStream getOutputStream() throws IOException {
        return this.c;
    }

    public void write(l lVar) {
        while (lVar.size() > 0) {
            try {
                ByteBuffer remove = lVar.remove();
                getOutputStream().write(remove.array(), remove.arrayOffset() + remove.position(), remove.remaining());
                l.reclaim(remove);
            } catch (IOException e2) {
                reportClose(e2);
                return;
            } finally {
                lVar.recycle();
            }
        }
    }

    public void setWriteableCallback(g gVar) {
        this.d = gVar;
    }

    public g getWriteableCallback() {
        return this.d;
    }

    public boolean isOpen() {
        return this.e;
    }

    public void reportClose(Exception exc) {
        if (!this.e) {
            this.e = true;
            this.f = exc;
            a aVar = this.g;
            if (aVar != null) {
                aVar.onCompleted(this.f);
            }
        }
    }

    public void setClosedCallback(a aVar) {
        this.g = aVar;
    }

    public a getClosedCallback() {
        return this.g;
    }

    public h getServer() {
        return this.f4513b;
    }

    public void setOutputStreamWritableCallback(g gVar) {
        this.h = gVar;
    }
}
