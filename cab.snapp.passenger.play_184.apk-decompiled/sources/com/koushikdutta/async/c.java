package com.koushikdutta.async;

import com.koushikdutta.async.a.d;
import com.koushikdutta.async.a.g;
import com.koushikdutta.async.e.a;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;

public class c implements j {
    static final /* synthetic */ boolean k = (!c.class.desiredAssertionStatus());

    /* renamed from: a  reason: collision with root package name */
    InetSocketAddress f4484a;

    /* renamed from: b  reason: collision with root package name */
    m f4485b;
    a c;
    boolean d;
    g e;
    d f;
    com.koushikdutta.async.a.a g;
    boolean h;
    Exception i;
    boolean j = false;
    private SelectionKey l;
    private h m;
    private l n = new l();
    private com.koushikdutta.async.a.a o;

    public String charset() {
        return null;
    }

    c() {
    }

    public void end() {
        this.f4485b.shutdownOutput();
    }

    public boolean isChunked() {
        return this.f4485b.isChunked();
    }

    /* access modifiers changed from: package-private */
    public final void a(SocketChannel socketChannel, InetSocketAddress inetSocketAddress) throws IOException {
        this.f4484a = inetSocketAddress;
        this.c = new a();
        this.f4485b = new ac(socketChannel);
    }

    /* access modifiers changed from: package-private */
    public final void a(DatagramChannel datagramChannel) throws IOException {
        this.f4485b = new s(datagramChannel);
        this.c = new a(8192);
    }

    public void onDataWritable() {
        if (!this.f4485b.isChunked()) {
            SelectionKey selectionKey = this.l;
            selectionKey.interestOps(selectionKey.interestOps() & -5);
        }
        g gVar = this.e;
        if (gVar != null) {
            gVar.onWriteable();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(h hVar, SelectionKey selectionKey) {
        this.m = hVar;
        this.l = selectionKey;
    }

    public void write(final l lVar) {
        if (this.m.getAffinity() != Thread.currentThread()) {
            this.m.run(new Runnable() {
                public final void run() {
                    c.this.write(lVar);
                }
            });
        } else if (this.f4485b.isConnected()) {
            try {
                lVar.remaining();
                ByteBuffer[] allArray = lVar.getAllArray();
                this.f4485b.write(allArray);
                lVar.addAll(allArray);
                int remaining = lVar.remaining();
                if (this.l.isValid()) {
                    if (remaining > 0) {
                        if (!k) {
                            if (this.f4485b.isChunked()) {
                                throw new AssertionError();
                            }
                        }
                        this.l.interestOps(this.l.interestOps() | 4);
                    } else {
                        this.l.interestOps(this.l.interestOps() & -5);
                    }
                    lVar.remaining();
                    return;
                }
                throw new IOException(new CancelledKeyException());
            } catch (IOException e2) {
                closeInternal();
                c(e2);
                a((Exception) e2);
            }
        } else if (!k && this.f4485b.isChunked()) {
            throw new AssertionError();
        }
    }

    /* access modifiers changed from: package-private */
    public final int a() {
        boolean z;
        b();
        int i2 = 0;
        if (this.j) {
            return 0;
        }
        try {
            ByteBuffer allocate = this.c.allocate();
            long read = (long) this.f4485b.read(allocate);
            if (read < 0) {
                closeInternal();
                z = true;
            } else {
                i2 = (int) (read + 0);
                z = false;
            }
            if (read > 0) {
                this.c.track(read);
                allocate.flip();
                this.n.add(allocate);
                af.emitAllData(this, this.n);
            } else {
                l.reclaim(allocate);
            }
            if (z) {
                c(null);
                a((Exception) null);
            }
        } catch (Exception e2) {
            closeInternal();
            c(e2);
            a(e2);
        }
        return i2;
    }

    private void a(Exception exc) {
        if (!this.d) {
            this.d = true;
            com.koushikdutta.async.a.a aVar = this.g;
            if (aVar != null) {
                aVar.onCompleted(exc);
                this.g = null;
            }
        }
    }

    public void close() {
        closeInternal();
        a((Exception) null);
    }

    public void closeInternal() {
        this.l.cancel();
        try {
            this.f4485b.close();
        } catch (IOException unused) {
        }
    }

    public void setWriteableCallback(g gVar) {
        this.e = gVar;
    }

    public void setDataCallback(d dVar) {
        this.f = dVar;
    }

    public d getDataCallback() {
        return this.f;
    }

    public void setClosedCallback(com.koushikdutta.async.a.a aVar) {
        this.g = aVar;
    }

    public com.koushikdutta.async.a.a getClosedCallback() {
        return this.g;
    }

    public g getWriteableCallback() {
        return this.e;
    }

    private void b(Exception exc) {
        if (!this.h) {
            this.h = true;
            com.koushikdutta.async.a.a aVar = this.o;
            if (aVar != null) {
                aVar.onCompleted(exc);
            }
        }
    }

    private void c(Exception exc) {
        if (this.n.hasRemaining()) {
            this.i = exc;
        } else {
            b(exc);
        }
    }

    public void setEndCallback(com.koushikdutta.async.a.a aVar) {
        this.o = aVar;
    }

    public com.koushikdutta.async.a.a getEndCallback() {
        return this.o;
    }

    public boolean isOpen() {
        return this.f4485b.isConnected() && this.l.isValid();
    }

    public void pause() {
        if (this.m.getAffinity() != Thread.currentThread()) {
            this.m.run(new Runnable() {
                public final void run() {
                    c.this.pause();
                }
            });
        } else if (!this.j) {
            this.j = true;
            try {
                this.l.interestOps(this.l.interestOps() & -2);
            } catch (Exception unused) {
            }
        }
    }

    private void b() {
        if (this.n.hasRemaining()) {
            af.emitAllData(this, this.n);
        }
    }

    public void resume() {
        if (this.m.getAffinity() != Thread.currentThread()) {
            this.m.run(new Runnable() {
                public final void run() {
                    c.this.resume();
                }
            });
        } else if (this.j) {
            this.j = false;
            try {
                this.l.interestOps(this.l.interestOps() | 1);
            } catch (Exception unused) {
            }
            b();
            if (!isOpen()) {
                c(this.i);
            }
        }
    }

    public boolean isPaused() {
        return this.j;
    }

    public h getServer() {
        return this.m;
    }

    public InetSocketAddress getRemoteAddress() {
        return this.f4484a;
    }

    public int getLocalPort() {
        return this.f4485b.getLocalPort();
    }

    public Object getSocket() {
        return this.f4485b.getSocket();
    }
}
