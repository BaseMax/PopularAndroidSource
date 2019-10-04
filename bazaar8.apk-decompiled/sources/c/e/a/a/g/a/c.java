package c.e.a.a.g.a;

import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* compiled from: EventMessageEncoder */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final ByteArrayOutputStream f8343a = new ByteArrayOutputStream(512);

    /* renamed from: b  reason: collision with root package name */
    public final DataOutputStream f8344b = new DataOutputStream(this.f8343a);

    public byte[] a(EventMessage eventMessage) {
        this.f8343a.reset();
        try {
            a(this.f8344b, eventMessage.f12595a);
            a(this.f8344b, eventMessage.f12596b != null ? eventMessage.f12596b : "");
            a(this.f8344b, 1000);
            a(this.f8344b, 0);
            a(this.f8344b, eventMessage.f12597c);
            a(this.f8344b, eventMessage.f12598d);
            this.f8344b.write(eventMessage.f12599e);
            this.f8344b.flush();
            return this.f8343a.toByteArray();
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static void a(DataOutputStream dataOutputStream, String str) {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public static void a(DataOutputStream dataOutputStream, long j2) {
        dataOutputStream.writeByte(((int) (j2 >>> 24)) & 255);
        dataOutputStream.writeByte(((int) (j2 >>> 16)) & 255);
        dataOutputStream.writeByte(((int) (j2 >>> 8)) & 255);
        dataOutputStream.writeByte(((int) j2) & 255);
    }
}
