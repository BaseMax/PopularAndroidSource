package com.koushikdutta.async.d;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

public class d implements a, com.koushikdutta.async.a.d {

    /* renamed from: a  reason: collision with root package name */
    private OutputStream f4512a;

    public d(OutputStream outputStream) {
        this.f4512a = outputStream;
    }

    public OutputStream getOutputStream() {
        return this.f4512a;
    }

    public void onDataAvailable(n nVar, l lVar) {
        while (lVar.size() > 0) {
            try {
                ByteBuffer remove = lVar.remove();
                this.f4512a.write(remove.array(), remove.arrayOffset() + remove.position(), remove.remaining());
                l.reclaim(remove);
            } catch (Exception e) {
                onCompleted(e);
                return;
            } finally {
                lVar.recycle();
            }
        }
    }

    public void close() {
        try {
            this.f4512a.close();
        } catch (IOException e) {
            onCompleted(e);
        }
    }

    public void onCompleted(Exception exc) {
        exc.printStackTrace();
    }
}
