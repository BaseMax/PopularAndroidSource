package k;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: RealBufferedSource */
class u extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ v f15763a;

    public u(v vVar) {
        this.f15763a = vVar;
    }

    public int available() {
        v vVar = this.f15763a;
        if (!vVar.f15766c) {
            return (int) Math.min(vVar.f15764a.f15741c, 2147483647L);
        }
        throw new IOException("closed");
    }

    public void close() {
        this.f15763a.close();
    }

    public int read() {
        v vVar = this.f15763a;
        if (!vVar.f15766c) {
            g gVar = vVar.f15764a;
            if (gVar.f15741c == 0 && vVar.f15765b.b(gVar, 8192) == -1) {
                return -1;
            }
            return this.f15763a.f15764a.readByte() & 255;
        }
        throw new IOException("closed");
    }

    public String toString() {
        return this.f15763a + ".inputStream()";
    }

    public int read(byte[] bArr, int i2, int i3) {
        if (!this.f15763a.f15766c) {
            C.a((long) bArr.length, (long) i2, (long) i3);
            v vVar = this.f15763a;
            g gVar = vVar.f15764a;
            if (gVar.f15741c == 0 && vVar.f15765b.b(gVar, 8192) == -1) {
                return -1;
            }
            return this.f15763a.f15764a.a(bArr, i2, i3);
        }
        throw new IOException("closed");
    }
}
