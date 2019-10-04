package com.koushikdutta.async;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;

final class ac extends m {

    /* renamed from: a  reason: collision with root package name */
    SocketChannel f4451a;

    public final int getLocalPort() {
        return this.f4451a.socket().getLocalPort();
    }

    ac(SocketChannel socketChannel) throws IOException {
        super(socketChannel);
        this.f4451a = socketChannel;
    }

    public final int read(ByteBuffer byteBuffer) throws IOException {
        return this.f4451a.read(byteBuffer);
    }

    public final boolean isConnected() {
        return this.f4451a.isConnected();
    }

    public final int write(ByteBuffer byteBuffer) throws IOException {
        return this.f4451a.write(byteBuffer);
    }

    public final int write(ByteBuffer[] byteBufferArr) throws IOException {
        return (int) this.f4451a.write(byteBufferArr);
    }

    public final SelectionKey register(Selector selector) throws ClosedChannelException {
        return register(selector, 8);
    }

    public final void shutdownOutput() {
        try {
            this.f4451a.socket().shutdownOutput();
        } catch (Exception unused) {
        }
    }

    public final void shutdownInput() {
        try {
            this.f4451a.socket().shutdownInput();
        } catch (Exception unused) {
        }
    }

    public final long read(ByteBuffer[] byteBufferArr) throws IOException {
        return this.f4451a.read(byteBufferArr);
    }

    public final long read(ByteBuffer[] byteBufferArr, int i, int i2) throws IOException {
        return this.f4451a.read(byteBufferArr, i, i2);
    }

    public final Object getSocket() {
        return this.f4451a.socket();
    }
}
