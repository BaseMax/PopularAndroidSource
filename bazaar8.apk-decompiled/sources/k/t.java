package k;

import java.nio.ByteBuffer;
import okio.ByteString;

/* compiled from: RealBufferedSink */
public final class t implements h {

    /* renamed from: a  reason: collision with root package name */
    public final g f15760a = new g();

    /* renamed from: b  reason: collision with root package name */
    public final y f15761b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f15762c;

    public t(y yVar) {
        if (yVar != null) {
            this.f15761b = yVar;
            return;
        }
        throw new NullPointerException("sink == null");
    }

    public g a() {
        return this.f15760a;
    }

    public B b() {
        return this.f15761b.b();
    }

    public h c(long j2) {
        if (!this.f15762c) {
            this.f15760a.c(j2);
            e();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    public void close() {
        if (!this.f15762c) {
            try {
                if (this.f15760a.f15741c > 0) {
                    this.f15761b.a(this.f15760a, this.f15760a.f15741c);
                }
                th = null;
            } catch (Throwable th) {
                th = th;
            }
            try {
                this.f15761b.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                }
            }
            this.f15762c = true;
            if (th != null) {
                C.a(th);
                throw null;
            }
        }
    }

    public h e() {
        if (!this.f15762c) {
            long q = this.f15760a.q();
            if (q > 0) {
                this.f15761b.a(this.f15760a, q);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    public void flush() {
        if (!this.f15762c) {
            g gVar = this.f15760a;
            long j2 = gVar.f15741c;
            if (j2 > 0) {
                this.f15761b.a(gVar, j2);
            }
            this.f15761b.flush();
            return;
        }
        throw new IllegalStateException("closed");
    }

    public h g(long j2) {
        if (!this.f15762c) {
            this.f15760a.g(j2);
            e();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    public boolean isOpen() {
        return !this.f15762c;
    }

    public String toString() {
        return "buffer(" + this.f15761b + ")";
    }

    public h write(byte[] bArr) {
        if (!this.f15762c) {
            this.f15760a.write(bArr);
            e();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    public h writeByte(int i2) {
        if (!this.f15762c) {
            this.f15760a.writeByte(i2);
            e();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    public h writeInt(int i2) {
        if (!this.f15762c) {
            this.f15760a.writeInt(i2);
            e();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    public h writeShort(int i2) {
        if (!this.f15762c) {
            this.f15760a.writeShort(i2);
            e();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    public void a(g gVar, long j2) {
        if (!this.f15762c) {
            this.f15760a.a(gVar, j2);
            e();
            return;
        }
        throw new IllegalStateException("closed");
    }

    public h write(byte[] bArr, int i2, int i3) {
        if (!this.f15762c) {
            this.f15760a.write(bArr, i2, i3);
            e();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    public h a(ByteString byteString) {
        if (!this.f15762c) {
            this.f15760a.a(byteString);
            e();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    public int write(ByteBuffer byteBuffer) {
        if (!this.f15762c) {
            int write = this.f15760a.write(byteBuffer);
            e();
            return write;
        }
        throw new IllegalStateException("closed");
    }

    public h a(String str) {
        if (!this.f15762c) {
            this.f15760a.a(str);
            e();
            return this;
        }
        throw new IllegalStateException("closed");
    }
}
