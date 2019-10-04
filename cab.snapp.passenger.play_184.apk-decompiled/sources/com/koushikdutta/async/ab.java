package com.koushikdutta.async;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;

class ab extends m {

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f4449b = (!ab.class.desiredAssertionStatus());

    /* renamed from: a  reason: collision with root package name */
    ServerSocketChannel f4450a;

    public void shutdownInput() {
    }

    public void shutdownOutput() {
    }

    public int getLocalPort() {
        return this.f4450a.socket().getLocalPort();
    }

    ab(ServerSocketChannel serverSocketChannel) throws IOException {
        super(serverSocketChannel);
        this.f4450a = serverSocketChannel;
    }

    public int read(ByteBuffer byteBuffer) throws IOException {
        if (!f4449b) {
            throw new AssertionError();
        }
        throw new IOException("Can't read ServerSocketChannel");
    }

    public boolean isConnected() {
        if (f4449b) {
            return false;
        }
        throw new AssertionError();
    }

    public int write(ByteBuffer byteBuffer) throws IOException {
        if (!f4449b) {
            throw new AssertionError();
        }
        throw new IOException("Can't write ServerSocketChannel");
    }

    public SelectionKey register(Selector selector) throws ClosedChannelException {
        return this.f4450a.register(selector, 16);
    }

    public int write(ByteBuffer[] byteBufferArr) throws IOException {
        if (!f4449b) {
            throw new AssertionError();
        }
        throw new IOException("Can't write ServerSocketChannel");
    }

    public long read(ByteBuffer[] byteBufferArr) throws IOException {
        if (!f4449b) {
            throw new AssertionError();
        }
        throw new IOException("Can't read ServerSocketChannel");
    }

    public long read(ByteBuffer[] byteBufferArr, int i, int i2) throws IOException {
        if (!f4449b) {
            throw new AssertionError();
        }
        throw new IOException("Can't read ServerSocketChannel");
    }

    public Object getSocket() {
        return this.f4450a.socket();
    }
}
