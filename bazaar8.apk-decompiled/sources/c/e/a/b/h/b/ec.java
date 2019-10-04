package c.e.a.b.h.b;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.SocketAddress;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Arrays;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

public final class ec extends SSLSocket {

    /* renamed from: a  reason: collision with root package name */
    public final SSLSocket f10875a;

    public ec(dc dcVar, SSLSocket sSLSocket) {
        this.f10875a = sSLSocket;
    }

    public final void addHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.f10875a.addHandshakeCompletedListener(handshakeCompletedListener);
    }

    public final void bind(SocketAddress socketAddress) {
        this.f10875a.bind(socketAddress);
    }

    public final synchronized void close() {
        this.f10875a.close();
    }

    public final void connect(SocketAddress socketAddress) {
        this.f10875a.connect(socketAddress);
    }

    public final boolean equals(Object obj) {
        return this.f10875a.equals(obj);
    }

    public final SocketChannel getChannel() {
        return this.f10875a.getChannel();
    }

    public final boolean getEnableSessionCreation() {
        return this.f10875a.getEnableSessionCreation();
    }

    public final String[] getEnabledCipherSuites() {
        return this.f10875a.getEnabledCipherSuites();
    }

    public final String[] getEnabledProtocols() {
        return this.f10875a.getEnabledProtocols();
    }

    public final InetAddress getInetAddress() {
        return this.f10875a.getInetAddress();
    }

    public final InputStream getInputStream() {
        return this.f10875a.getInputStream();
    }

    public final boolean getKeepAlive() {
        return this.f10875a.getKeepAlive();
    }

    public final InetAddress getLocalAddress() {
        return this.f10875a.getLocalAddress();
    }

    public final int getLocalPort() {
        return this.f10875a.getLocalPort();
    }

    public final SocketAddress getLocalSocketAddress() {
        return this.f10875a.getLocalSocketAddress();
    }

    public final boolean getNeedClientAuth() {
        return this.f10875a.getNeedClientAuth();
    }

    public final boolean getOOBInline() {
        return this.f10875a.getOOBInline();
    }

    public final OutputStream getOutputStream() {
        return this.f10875a.getOutputStream();
    }

    public final int getPort() {
        return this.f10875a.getPort();
    }

    public final synchronized int getReceiveBufferSize() {
        return this.f10875a.getReceiveBufferSize();
    }

    public final SocketAddress getRemoteSocketAddress() {
        return this.f10875a.getRemoteSocketAddress();
    }

    public final boolean getReuseAddress() {
        return this.f10875a.getReuseAddress();
    }

    public final synchronized int getSendBufferSize() {
        return this.f10875a.getSendBufferSize();
    }

    public final SSLSession getSession() {
        return this.f10875a.getSession();
    }

    public final int getSoLinger() {
        return this.f10875a.getSoLinger();
    }

    public final synchronized int getSoTimeout() {
        return this.f10875a.getSoTimeout();
    }

    public final String[] getSupportedCipherSuites() {
        return this.f10875a.getSupportedCipherSuites();
    }

    public final String[] getSupportedProtocols() {
        return this.f10875a.getSupportedProtocols();
    }

    public final boolean getTcpNoDelay() {
        return this.f10875a.getTcpNoDelay();
    }

    public final int getTrafficClass() {
        return this.f10875a.getTrafficClass();
    }

    public final boolean getUseClientMode() {
        return this.f10875a.getUseClientMode();
    }

    public final boolean getWantClientAuth() {
        return this.f10875a.getWantClientAuth();
    }

    public final boolean isBound() {
        return this.f10875a.isBound();
    }

    public final boolean isClosed() {
        return this.f10875a.isClosed();
    }

    public final boolean isConnected() {
        return this.f10875a.isConnected();
    }

    public final boolean isInputShutdown() {
        return this.f10875a.isInputShutdown();
    }

    public final boolean isOutputShutdown() {
        return this.f10875a.isOutputShutdown();
    }

    public final void removeHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.f10875a.removeHandshakeCompletedListener(handshakeCompletedListener);
    }

    public final void sendUrgentData(int i2) {
        this.f10875a.sendUrgentData(i2);
    }

    public final void setEnableSessionCreation(boolean z) {
        this.f10875a.setEnableSessionCreation(z);
    }

    public final void setEnabledCipherSuites(String[] strArr) {
        this.f10875a.setEnabledCipherSuites(strArr);
    }

    public final void setEnabledProtocols(String[] strArr) {
        if (strArr != null && Arrays.asList(strArr).contains("SSLv3")) {
            ArrayList arrayList = new ArrayList(Arrays.asList(this.f10875a.getEnabledProtocols()));
            if (arrayList.size() > 1) {
                arrayList.remove("SSLv3");
            }
            strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
        this.f10875a.setEnabledProtocols(strArr);
    }

    public final void setKeepAlive(boolean z) {
        this.f10875a.setKeepAlive(z);
    }

    public final void setNeedClientAuth(boolean z) {
        this.f10875a.setNeedClientAuth(z);
    }

    public final void setOOBInline(boolean z) {
        this.f10875a.setOOBInline(z);
    }

    public final void setPerformancePreferences(int i2, int i3, int i4) {
        this.f10875a.setPerformancePreferences(i2, i3, i4);
    }

    public final synchronized void setReceiveBufferSize(int i2) {
        this.f10875a.setReceiveBufferSize(i2);
    }

    public final void setReuseAddress(boolean z) {
        this.f10875a.setReuseAddress(z);
    }

    public final synchronized void setSendBufferSize(int i2) {
        this.f10875a.setSendBufferSize(i2);
    }

    public final void setSoLinger(boolean z, int i2) {
        this.f10875a.setSoLinger(z, i2);
    }

    public final synchronized void setSoTimeout(int i2) {
        this.f10875a.setSoTimeout(i2);
    }

    public final void setTcpNoDelay(boolean z) {
        this.f10875a.setTcpNoDelay(z);
    }

    public final void setTrafficClass(int i2) {
        this.f10875a.setTrafficClass(i2);
    }

    public final void setUseClientMode(boolean z) {
        this.f10875a.setUseClientMode(z);
    }

    public final void setWantClientAuth(boolean z) {
        this.f10875a.setWantClientAuth(z);
    }

    public final void shutdownInput() {
        this.f10875a.shutdownInput();
    }

    public final void shutdownOutput() {
        this.f10875a.shutdownOutput();
    }

    public final void startHandshake() {
        this.f10875a.startHandshake();
    }

    public final String toString() {
        return this.f10875a.toString();
    }

    public final void connect(SocketAddress socketAddress, int i2) {
        this.f10875a.connect(socketAddress, i2);
    }
}
