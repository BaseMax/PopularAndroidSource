package c.b.a.c.c;

import android.util.Log;
import c.b.a.c.a;
import c.b.a.c.f;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* renamed from: c.b.a.c.c.e  reason: case insensitive filesystem */
/* compiled from: ByteBufferEncoder */
public class C0370e implements a<ByteBuffer> {
    public boolean a(ByteBuffer byteBuffer, File file, f fVar) {
        try {
            c.b.a.i.a.a(byteBuffer, file);
            return true;
        } catch (IOException e2) {
            if (Log.isLoggable("ByteBufferEncoder", 3)) {
                Log.d("ByteBufferEncoder", "Failed to write data", e2);
            }
            return false;
        }
    }
}
