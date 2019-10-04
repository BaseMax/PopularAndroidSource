package c.b.a.c.d.e;

import android.util.Log;
import c.b.a.c.b.D;
import c.b.a.c.f;
import c.b.a.c.h;
import c.b.a.i.a;
import com.bumptech.glide.load.EncodeStrategy;
import java.io.File;
import java.io.IOException;

/* compiled from: GifDrawableEncoder */
public class d implements h<c> {
    public EncodeStrategy a(f fVar) {
        return EncodeStrategy.SOURCE;
    }

    public boolean a(D<c> d2, File file, f fVar) {
        try {
            a.a(d2.get().c(), file);
            return true;
        } catch (IOException e2) {
            if (Log.isLoggable("GifEncoder", 5)) {
                Log.w("GifEncoder", "Failed to encode GIF drawable data", e2);
            }
            return false;
        }
    }
}
