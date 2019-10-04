package k;

import java.io.InputStream;

/* compiled from: Buffer */
class f extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f15738a;

    public f(g gVar) {
        this.f15738a = gVar;
    }

    public int available() {
        return (int) Math.min(this.f15738a.f15741c, 2147483647L);
    }

    public void close() {
    }

    public int read() {
        g gVar = this.f15738a;
        if (gVar.f15741c > 0) {
            return gVar.readByte() & 255;
        }
        return -1;
    }

    public String toString() {
        return this.f15738a + ".inputStream()";
    }

    public int read(byte[] bArr, int i2, int i3) {
        return this.f15738a.a(bArr, i2, i3);
    }
}
