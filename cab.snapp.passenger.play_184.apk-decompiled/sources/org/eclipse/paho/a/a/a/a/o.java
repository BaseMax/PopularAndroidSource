package org.eclipse.paho.a.a.a.a;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.q;

public final class o extends h {
    private q d;
    private String e;
    private byte[] f;

    public final boolean isMessageIdRequired() {
        return true;
    }

    public o(String str, q qVar) {
        super((byte) 3);
        this.f = null;
        this.e = str;
        this.d = qVar;
    }

    public o(byte b2, byte[] bArr) throws p, IOException {
        super((byte) 3);
        this.f = null;
        this.d = new p();
        this.d.setQos(3 & (b2 >> 1));
        if ((b2 & 1) == 1) {
            this.d.setRetained(true);
        }
        if ((b2 & 8) == 8) {
            ((p) this.d).setDuplicate(true);
        }
        a aVar = new a(new ByteArrayInputStream(bArr));
        DataInputStream dataInputStream = new DataInputStream(aVar);
        this.e = decodeUTF8(dataInputStream);
        if (this.d.getQos() > 0) {
            this.f8741b = dataInputStream.readUnsignedShort();
        }
        byte[] bArr2 = new byte[(bArr.length - aVar.getCounter())];
        dataInputStream.readFully(bArr2);
        dataInputStream.close();
        this.d.setPayload(bArr2);
    }

    public final String toString() {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        byte[] payload = this.d.getPayload();
        int min = Math.min(payload.length, 20);
        for (int i = 0; i < min; i++) {
            String hexString = Integer.toHexString(payload[i]);
            if (hexString.length() == 1) {
                hexString = "0".concat(String.valueOf(hexString));
            }
            stringBuffer.append(hexString);
        }
        try {
            str = new String(payload, 0, min, "UTF-8");
        } catch (Exception unused) {
            str = "?";
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(super.toString());
        stringBuffer2.append(" qos:");
        stringBuffer2.append(this.d.getQos());
        if (this.d.getQos() > 0) {
            stringBuffer2.append(" msgId:");
            stringBuffer2.append(this.f8741b);
        }
        stringBuffer2.append(" retained:");
        stringBuffer2.append(this.d.isRetained());
        stringBuffer2.append(" dup:");
        stringBuffer2.append(this.c);
        stringBuffer2.append(" topic:\"");
        stringBuffer2.append(this.e);
        stringBuffer2.append("\"");
        stringBuffer2.append(" payload:[hex:");
        stringBuffer2.append(stringBuffer);
        stringBuffer2.append(" utf8:\"");
        stringBuffer2.append(str);
        stringBuffer2.append("\"");
        stringBuffer2.append(" length:");
        stringBuffer2.append(payload.length);
        stringBuffer2.append("]");
        return stringBuffer2.toString();
    }

    /* access modifiers changed from: protected */
    public final byte a() {
        byte qos = (byte) (this.d.getQos() << 1);
        if (this.d.isRetained()) {
            qos = (byte) (qos | 1);
        }
        return (this.d.isDuplicate() || this.c) ? (byte) (qos | 8) : qos;
    }

    public final String getTopicName() {
        return this.e;
    }

    public final q getMessage() {
        return this.d;
    }

    public final byte[] getPayload() throws p {
        if (this.f == null) {
            this.f = this.d.getPayload();
        }
        return this.f;
    }

    public final int getPayloadLength() {
        try {
            return getPayload().length;
        } catch (p unused) {
            return 0;
        }
    }

    public final void setMessageId(int i) {
        super.setMessageId(i);
        q qVar = this.d;
        if (qVar instanceof p) {
            ((p) qVar).setMessageId(i);
        }
    }

    /* access modifiers changed from: protected */
    public final byte[] b() throws p {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            encodeUTF8(dataOutputStream, this.e);
            if (this.d.getQos() > 0) {
                dataOutputStream.writeShort(this.f8741b);
            }
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new p((Throwable) e2);
        }
    }
}
