package k;

import java.nio.channels.WritableByteChannel;
import okio.ByteString;

/* compiled from: BufferedSink */
public interface h extends y, WritableByteChannel {
    g a();

    h a(String str);

    h a(ByteString byteString);

    h c(long j2);

    h e();

    void flush();

    h g(long j2);

    h write(byte[] bArr);

    h write(byte[] bArr, int i2, int i3);

    h writeByte(int i2);

    h writeInt(int i2);

    h writeShort(int i2);
}
