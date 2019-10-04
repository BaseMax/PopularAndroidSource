package com.koushikdutta.async.http.d;

import com.koushikdutta.async.af;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import com.koushikdutta.async.v;
import java.nio.ByteBuffer;
import java.util.zip.Inflater;

public class g extends v {
    static final /* synthetic */ boolean g = (!g.class.desiredAssertionStatus());
    private Inflater d;
    l f;

    public final void report(Exception exc) {
        this.d.end();
        if (exc != null && this.d.getRemaining() > 0) {
            exc = new e("data still remaining in inflater", exc);
        }
        super.report(exc);
    }

    public void onDataAvailable(n nVar, l lVar) {
        try {
            ByteBuffer obtain = l.obtain(lVar.remaining() * 2);
            while (lVar.size() > 0) {
                ByteBuffer remove = lVar.remove();
                if (remove.hasRemaining()) {
                    int remaining = remove.remaining();
                    this.d.setInput(remove.array(), remove.arrayOffset() + remove.position(), remove.remaining());
                    do {
                        obtain.position(obtain.position() + this.d.inflate(obtain.array(), obtain.arrayOffset() + obtain.position(), obtain.remaining()));
                        if (!obtain.hasRemaining()) {
                            obtain.flip();
                            this.f.add(obtain);
                            if (!g) {
                                if (remaining == 0) {
                                    throw new AssertionError();
                                }
                            }
                            obtain = l.obtain(obtain.capacity() * 2);
                        }
                        if (this.d.needsInput()) {
                            break;
                        }
                    } while (!this.d.finished());
                }
                l.reclaim(remove);
            }
            obtain.flip();
            this.f.add(obtain);
            af.emitAllData(this, this.f);
        } catch (Exception e) {
            report(e);
        }
    }

    public g() {
        this(new Inflater());
    }

    public g(Inflater inflater) {
        this.f = new l();
        this.d = inflater;
    }
}
