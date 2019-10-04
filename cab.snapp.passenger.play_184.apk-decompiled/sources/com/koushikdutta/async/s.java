package com.koushikdutta.async;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;

final class s extends m {

    /* renamed from: a  reason: collision with root package name */
    DatagramChannel f4851a;

    /* renamed from: b  reason: collision with root package name */
    InetSocketAddress f4852b;

    public final boolean isChunked() {
        return true;
    }

    public final void shutdownInput() {
    }

    public final void shutdownOutput() {
    }

    public final int getLocalPort() {
        return this.f4851a.socket().getLocalPort();
    }

    public final InetSocketAddress getRemoteAddress() {
        return this.f4852b;
    }

    public final void disconnect() throws IOException {
        this.f4851a.disconnect();
    }

    s(DatagramChannel datagramChannel) throws IOException {
        super(datagramChannel);
        this.f4851a = datagramChannel;
    }

    public final int read(ByteBuffer byteBuffer) throws IOException {
        if (!isConnected()) {
            int position = byteBuffer.position();
            this.f4852b = (InetSocketAddress) this.f4851a.receive(byteBuffer);
            if (this.f4852b == null) {
                return -1;
            }
            return byteBuffer.position() - position;
        }
        this.f4852b = null;
        return this.f4851a.read(byteBuffer);
    }

    public final boolean isConnected() {
        return this.f4851a.isConnected();
    }

    public final int write(ByteBuffer byteBuffer) throws IOException {
        return this.f4851a.write(byteBuffer);
    }

    public final int write(ByteBuffer[] byteBufferArr) throws IOException {
        return (int) this.f4851a.write(byteBufferArr);
    }

    public final SelectionKey register(Selector selector, int i) throws ClosedChannelException {
        return this.f4851a.register(selector, i);
    }

    public final SelectionKey register(Selector selector) throws ClosedChannelException {
        return register(selector, 1);
    }

    public final long read(ByteBuffer[] byteBufferArr) throws IOException {
        return this.f4851a.read(byteBufferArr);
    }

    public final long read(ByteBuffer[] byteBufferArr, int i, int i2) throws IOException {
        return this.f4851a.read(byteBufferArr, i, i2);
    }

    public final Object getSocket() {
        return this.f4851a.socket();
    }
}
