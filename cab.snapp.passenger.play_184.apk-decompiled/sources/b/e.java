package b;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

public interface e extends v, ReadableByteChannel {
    c buffer();

    boolean exhausted() throws IOException;

    long indexOf(byte b2) throws IOException;

    long indexOf(byte b2, long j) throws IOException;

    long indexOf(byte b2, long j, long j2) throws IOException;

    long indexOf(f fVar) throws IOException;

    long indexOf(f fVar, long j) throws IOException;

    long indexOfElement(f fVar) throws IOException;

    long indexOfElement(f fVar, long j) throws IOException;

    InputStream inputStream();

    boolean rangeEquals(long j, f fVar) throws IOException;

    boolean rangeEquals(long j, f fVar, int i, int i2) throws IOException;

    int read(byte[] bArr) throws IOException;

    int read(byte[] bArr, int i, int i2) throws IOException;

    long readAll(u uVar) throws IOException;

    byte readByte() throws IOException;

    byte[] readByteArray() throws IOException;

    byte[] readByteArray(long j) throws IOException;

    f readByteString() throws IOException;

    f readByteString(long j) throws IOException;

    long readDecimalLong() throws IOException;

    void readFully(c cVar, long j) throws IOException;

    void readFully(byte[] bArr) throws IOException;

    long readHexadecimalUnsignedLong() throws IOException;

    int readInt() throws IOException;

    int readIntLe() throws IOException;

    long readLong() throws IOException;

    long readLongLe() throws IOException;

    short readShort() throws IOException;

    short readShortLe() throws IOException;

    String readString(long j, Charset charset) throws IOException;

    String readString(Charset charset) throws IOException;

    String readUtf8() throws IOException;

    String readUtf8(long j) throws IOException;

    int readUtf8CodePoint() throws IOException;

    @Nullable
    String readUtf8Line() throws IOException;

    String readUtf8LineStrict() throws IOException;

    String readUtf8LineStrict(long j) throws IOException;

    boolean request(long j) throws IOException;

    void require(long j) throws IOException;

    int select(o oVar) throws IOException;

    void skip(long j) throws IOException;
}
