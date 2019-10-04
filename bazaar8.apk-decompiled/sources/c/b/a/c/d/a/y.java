package c.b.a.c.d.a;

import c.b.a.c.e;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: VideoDecoder */
class y implements e.a<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final ByteBuffer f4204a = ByteBuffer.allocate(4);

    public void a(byte[] bArr, Integer num, MessageDigest messageDigest) {
        if (num != null) {
            messageDigest.update(bArr);
            synchronized (this.f4204a) {
                this.f4204a.position(0);
                messageDigest.update(this.f4204a.putInt(num.intValue()).array());
            }
        }
    }
}
