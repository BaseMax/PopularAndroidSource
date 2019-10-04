package c.b.a.c.d.a;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import c.b.a.c.b.D;
import c.b.a.c.b.a.e;
import c.b.a.c.f;
import c.b.a.c.h;
import com.bumptech.glide.load.EncodeStrategy;
import java.io.File;

/* compiled from: BitmapDrawableEncoder */
public class b implements h<BitmapDrawable> {

    /* renamed from: a  reason: collision with root package name */
    public final e f4152a;

    /* renamed from: b  reason: collision with root package name */
    public final h<Bitmap> f4153b;

    public b(e eVar, h<Bitmap> hVar) {
        this.f4152a = eVar;
        this.f4153b = hVar;
    }

    public boolean a(D<BitmapDrawable> d2, File file, f fVar) {
        return this.f4153b.a(new d(d2.get().getBitmap(), this.f4152a), file, fVar);
    }

    public EncodeStrategy a(f fVar) {
        return this.f4153b.a(fVar);
    }
}
