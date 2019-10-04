package org.eclipse.paho.a.a.a.a;

import java.io.IOException;
import java.io.InputStream;

public final class a extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private InputStream f8730a;

    /* renamed from: b  reason: collision with root package name */
    private int f8731b = 0;

    public a(InputStream inputStream) {
        this.f8730a = inputStream;
    }

    public final int read() throws IOException {
        int read = this.f8730a.read();
        if (read != -1) {
            this.f8731b++;
        }
        return read;
    }

    public final int getCounter() {
        return this.f8731b;
    }

    public final void resetCounter() {
        this.f8731b = 0;
    }
}
