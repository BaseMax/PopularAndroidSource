package k;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
import okio.ByteString;

/* compiled from: BufferedSource */
public interface i extends z, ReadableByteChannel {
    long a(byte b2);

    long a(y yVar);

    String a(Charset charset);

    g a();

    ByteString a(long j2);

    boolean a(long j2, ByteString byteString);

    String b(long j2);

    byte[] c();

    boolean d();

    boolean d(long j2);

    byte[] e(long j2);

    long f();

    void f(long j2);

    String g();

    int h();

    short i();

    long j();

    InputStream k();

    byte readByte();

    void readFully(byte[] bArr);

    int readInt();

    short readShort();

    void skip(long j2);
}
