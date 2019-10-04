package b;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

final class p implements d {

    /* renamed from: a  reason: collision with root package name */
    boolean f158a;
    public final c buffer = new c();
    public final u sink;

    p(u uVar) {
        if (uVar != null) {
            this.sink = uVar;
            return;
        }
        throw new NullPointerException("sink == null");
    }

    public final c buffer() {
        return this.buffer;
    }

    public final void write(c cVar, long j) throws IOException {
        if (!this.f158a) {
            this.buffer.write(cVar, j);
            emitCompleteSegments();
            return;
        }
        throw new IllegalStateException("closed");
    }

    public final d write(f fVar) throws IOException {
        if (!this.f158a) {
            this.buffer.write(fVar);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final d writeUtf8(String str) throws IOException {
        if (!this.f158a) {
            this.buffer.writeUtf8(str);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final d writeUtf8(String str, int i, int i2) throws IOException {
        if (!this.f158a) {
            this.buffer.writeUtf8(str, i, i2);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final d writeUtf8CodePoint(int i) throws IOException {
        if (!this.f158a) {
            this.buffer.writeUtf8CodePoint(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final d writeString(String str, Charset charset) throws IOException {
        if (!this.f158a) {
            this.buffer.writeString(str, charset);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final d writeString(String str, int i, int i2, Charset charset) throws IOException {
        if (!this.f158a) {
            this.buffer.writeString(str, i, i2, charset);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final d write(byte[] bArr) throws IOException {
        if (!this.f158a) {
            this.buffer.write(bArr);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final d write(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f158a) {
            this.buffer.write(bArr, i, i2);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final int write(ByteBuffer byteBuffer) throws IOException {
        if (!this.f158a) {
            int write = this.buffer.write(byteBuffer);
            emitCompleteSegments();
            return write;
        }
        throw new IllegalStateException("closed");
    }

    public final long writeAll(v vVar) throws IOException {
        if (vVar != null) {
            long j = 0;
            while (true) {
                long read = vVar.read(this.buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                if (read == -1) {
                    return j;
                }
                j += read;
                emitCompleteSegments();
            }
        } else {
            throw new IllegalArgumentException("source == null");
        }
    }

    public final d write(v vVar, long j) throws IOException {
        while (j > 0) {
            long read = vVar.read(this.buffer, j);
            if (read != -1) {
                j -= read;
                emitCompleteSegments();
            } else {
                throw new EOFException();
            }
        }
        return this;
    }

    public final d writeByte(int i) throws IOException {
        if (!this.f158a) {
            this.buffer.writeByte(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final d writeShort(int i) throws IOException {
        if (!this.f158a) {
            this.buffer.writeShort(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final d writeShortLe(int i) throws IOException {
        if (!this.f158a) {
            this.buffer.writeShortLe(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final d writeInt(int i) throws IOException {
        if (!this.f158a) {
            this.buffer.writeInt(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final d writeIntLe(int i) throws IOException {
        if (!this.f158a) {
            this.buffer.writeIntLe(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final d writeLong(long j) throws IOException {
        if (!this.f158a) {
            this.buffer.writeLong(j);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final d writeLongLe(long j) throws IOException {
        if (!this.f158a) {
            this.buffer.writeLongLe(j);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final d writeDecimalLong(long j) throws IOException {
        if (!this.f158a) {
            this.buffer.writeDecimalLong(j);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final d writeHexadecimalUnsignedLong(long j) throws IOException {
        if (!this.f158a) {
            this.buffer.writeHexadecimalUnsignedLong(j);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public final d emitCompleteSegments() throws IOException {
        if (!this.f158a) {
            long completeSegmentByteCount = this.buffer.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                this.sink.write(this.buffer, completeSegmentByteCount);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    public final d emit() throws IOException {
        if (!this.f158a) {
            long size = this.buffer.size();
            if (size > 0) {
                this.sink.write(this.buffer, size);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    public final OutputStream outputStream() {
        return new OutputStream() {
            public final void write(int i) throws IOException {
                if (!p.this.f158a) {
                    p.this.buffer.writeByte((int) (byte) i);
                    p.this.emitCompleteSegments();
                    return;
                }
                throw new IOException("closed");
            }

            public final void write(byte[] bArr, int i, int i2) throws IOException {
                if (!p.this.f158a) {
                    p.this.buffer.write(bArr, i, i2);
                    p.this.emitCompleteSegments();
                    return;
                }
                throw new IOException("closed");
            }

            public final void flush() throws IOException {
                if (!p.this.f158a) {
                    p.this.flush();
                }
            }

            public final void close() throws IOException {
                p.this.close();
            }

            public final String toString() {
                return p.this + ".outputStream()";
            }
        };
    }

    public final void flush() throws IOException {
        if (!this.f158a) {
            if (this.buffer.f135b > 0) {
                u uVar = this.sink;
                c cVar = this.buffer;
                uVar.write(cVar, cVar.f135b);
            }
            this.sink.flush();
            return;
        }
        throw new IllegalStateException("closed");
    }

    public final boolean isOpen() {
        return !this.f158a;
    }

    public final void close() throws IOException {
        if (!this.f158a) {
            Throwable th = null;
            try {
                if (this.buffer.f135b > 0) {
                    this.sink.write(this.buffer, this.buffer.f135b);
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                this.sink.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                }
            }
            this.f158a = true;
            if (th != null) {
                x.sneakyRethrow(th);
            }
        }
    }

    public final w timeout() {
        return this.sink.timeout();
    }

    public final String toString() {
        return "buffer(" + this.sink + ")";
    }
}
