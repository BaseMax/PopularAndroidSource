package c.b.a.a;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* compiled from: StrictLineReader */
class c extends ByteArrayOutputStream {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f3718a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public c(d dVar, int i2) {
        super(i2);
        this.f3718a = dVar;
    }

    public String toString() {
        int i2 = this.count;
        try {
            return new String(this.buf, 0, (i2 <= 0 || this.buf[i2 + -1] != 13) ? this.count : i2 - 1, this.f3718a.f3720b.name());
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }
}
