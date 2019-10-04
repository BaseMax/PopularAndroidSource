package k;

import java.io.OutputStream;

/* compiled from: Buffer */
class e extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f15737a;

    public e(g gVar) {
        this.f15737a = gVar;
    }

    public void close() {
    }

    public void flush() {
    }

    public String toString() {
        return this.f15737a + ".outputStream()";
    }

    public void write(int i2) {
        this.f15737a.writeByte((int) (byte) i2);
    }

    public void write(byte[] bArr, int i2, int i3) {
        this.f15737a.write(bArr, i2, i3);
    }
}
