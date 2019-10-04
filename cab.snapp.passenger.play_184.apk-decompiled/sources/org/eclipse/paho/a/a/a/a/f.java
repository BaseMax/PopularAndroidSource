package org.eclipse.paho.a.a.a.a;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import org.eclipse.paho.a.a.a.i;
import org.eclipse.paho.a.a.b.b;
import org.eclipse.paho.a.a.b.c;
import org.eclipse.paho.a.a.p;

public class f extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final String f8736a = f.class.getName();

    /* renamed from: b  reason: collision with root package name */
    private final b f8737b = c.getLogger(c.MQTT_CLIENT_MSG_CAT, this.f8736a);
    private org.eclipse.paho.a.a.a.b c = null;
    private DataInputStream d;
    private ByteArrayOutputStream e;
    private int f;
    private int g;
    private byte[] h;

    public f(org.eclipse.paho.a.a.a.b bVar, InputStream inputStream) {
        this.c = bVar;
        this.d = new DataInputStream(inputStream);
        this.e = new ByteArrayOutputStream();
        this.f = -1;
    }

    public int read() throws IOException {
        return this.d.read();
    }

    public int available() throws IOException {
        return this.d.available();
    }

    public void close() throws IOException {
        this.d.close();
    }

    public u readMqttWireMessage() throws IOException, p {
        int i;
        try {
            if (this.f < 0) {
                this.e.reset();
                byte readByte = this.d.readByte();
                this.c.notifyReceivedBytes(1);
                byte b2 = (byte) ((readByte >>> 4) & 15);
                if (b2 <= 0 || b2 > 14) {
                    throw i.createMqttException(32108);
                }
                this.f = u.readMBI(this.d).getValue();
                this.e.write(readByte);
                this.e.write(u.encodeMBI((long) this.f));
                this.h = new byte[(this.e.size() + this.f)];
                this.g = 0;
            }
            if (this.f < 0) {
                return null;
            }
            int size = this.e.size() + this.g;
            int i2 = this.f - this.g;
            if (i2 >= 0) {
                i = 0;
                while (i < i2) {
                    int read = this.d.read(this.h, size + i, i2 - i);
                    if (read >= 0) {
                        this.c.notifyReceivedBytes(read);
                        i += read;
                    } else {
                        throw new EOFException();
                    }
                }
                this.f = -1;
                byte[] byteArray = this.e.toByteArray();
                System.arraycopy(byteArray, 0, this.h, 0, byteArray.length);
                u createWireMessage = u.createWireMessage(this.h);
                this.f8737b.fine(this.f8736a, "readMqttWireMessage", "301", new Object[]{createWireMessage});
                return createWireMessage;
            }
            throw new IndexOutOfBoundsException();
        } catch (SocketTimeoutException e2) {
            this.g += i;
            throw e2;
        } catch (SocketTimeoutException unused) {
            return null;
        }
    }
}
