package c.b.a.c.d.a;

import c.b.a.c.e;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: VideoDecoder */
class x implements e.a<Long> {

    /* renamed from: a  reason: collision with root package name */
    public final ByteBuffer f4203a = ByteBuffer.allocate(8);

    public void a(byte[] bArr, Long l2, MessageDigest messageDigest) {
        messageDigest.update(bArr);
        synchronized (this.f4203a) {
            this.f4203a.position(0);
            messageDigest.update(this.f4203a.putLong(l2.longValue()).array());
        }
    }
}
