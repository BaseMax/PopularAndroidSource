package com.koushikdutta.async;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;

public final class b extends c {
    public final void disconnect() throws IOException {
        this.f4484a = null;
        ((s) this.f4485b).disconnect();
    }

    public final InetSocketAddress getRemoteAddress() {
        if (isOpen()) {
            return super.getRemoteAddress();
        }
        return ((s) this.f4485b).getRemoteAddress();
    }

    public final void connect(InetSocketAddress inetSocketAddress) throws IOException {
        this.f4484a = inetSocketAddress;
        ((s) this.f4485b).f4851a.connect(inetSocketAddress);
    }

    public final void send(final String str, final int i, final ByteBuffer byteBuffer) {
        if (getServer().getAffinity() != Thread.currentThread()) {
            getServer().run(new Runnable() {
                public final void run() {
                    b.this.send(str, i, byteBuffer);
                }
            });
        } else {
            try {
                ((s) this.f4485b).f4851a.send(byteBuffer, new InetSocketAddress(str, i));
            } catch (IOException unused) {
            }
        }
    }

    public final void send(final InetSocketAddress inetSocketAddress, final ByteBuffer byteBuffer) {
        if (getServer().getAffinity() != Thread.currentThread()) {
            getServer().run(new Runnable() {
                public final void run() {
                    b.this.send(inetSocketAddress, byteBuffer);
                }
            });
        } else {
            try {
                ((s) this.f4485b).f4851a.send(byteBuffer, new InetSocketAddress(inetSocketAddress.getHostName(), inetSocketAddress.getPort()));
            } catch (IOException unused) {
            }
        }
    }
}
