package b;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;

public interface d extends u, WritableByteChannel {
    c buffer();

    d emit() throws IOException;

    d emitCompleteSegments() throws IOException;

    void flush() throws IOException;

    OutputStream outputStream();

    d write(f fVar) throws IOException;

    d write(v vVar, long j) throws IOException;

    d write(byte[] bArr) throws IOException;

    d write(byte[] bArr, int i, int i2) throws IOException;

    long writeAll(v vVar) throws IOException;

    d writeByte(int i) throws IOException;

    d writeDecimalLong(long j) throws IOException;

    d writeHexadecimalUnsignedLong(long j) throws IOException;

    d writeInt(int i) throws IOException;

    d writeIntLe(int i) throws IOException;

    d writeLong(long j) throws IOException;

    d writeLongLe(long j) throws IOException;

    d writeShort(int i) throws IOException;

    d writeShortLe(int i) throws IOException;

    d writeString(String str, int i, int i2, Charset charset) throws IOException;

    d writeString(String str, Charset charset) throws IOException;

    d writeUtf8(String str) throws IOException;

    d writeUtf8(String str, int i, int i2) throws IOException;

    d writeUtf8CodePoint(int i) throws IOException;
}
