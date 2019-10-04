package org.eclipse.paho.a.a.a.a;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.eclipse.paho.a.a.b.b;
import org.eclipse.paho.a.a.b.c;
import org.eclipse.paho.a.a.p;

public class g extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8738a = g.class.getName();

    /* renamed from: b  reason: collision with root package name */
    private b f8739b = c.getLogger(c.MQTT_CLIENT_MSG_CAT, f8738a);
    private org.eclipse.paho.a.a.a.b c = null;
    private BufferedOutputStream d;

    public g(org.eclipse.paho.a.a.a.b bVar, OutputStream outputStream) {
        this.c = bVar;
        this.d = new BufferedOutputStream(outputStream);
    }

    public void close() throws IOException {
        this.d.close();
    }

    public void flush() throws IOException {
        this.d.flush();
    }

    public void write(byte[] bArr) throws IOException {
        this.d.write(bArr);
        this.c.notifySentBytes(bArr.length);
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.d.write(bArr, i, i2);
        this.c.notifySentBytes(i2);
    }

    public void write(int i) throws IOException {
        this.d.write(i);
    }

    public void write(u uVar) throws IOException, p {
        byte[] header = uVar.getHeader();
        byte[] payload = uVar.getPayload();
        this.d.write(header, 0, header.length);
        this.c.notifySentBytes(header.length);
        int i = 0;
        while (i < payload.length) {
            int min = Math.min(1024, payload.length - i);
            this.d.write(payload, i, min);
            i += 1024;
            this.c.notifySentBytes(min);
        }
        this.f8739b.fine(f8738a, "write", "529", new Object[]{uVar});
    }
}
