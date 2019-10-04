package f.a.a.f;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import c.f.a.N;

/* compiled from: RoundedPicassoTransformation */
public class k implements N {

    /* renamed from: a  reason: collision with root package name */
    public final int f14337a;

    /* renamed from: b  reason: collision with root package name */
    public final int f14338b;

    public k(int i2, int i3) {
        this.f14337a = i2;
        this.f14338b = i3;
    }

    public Bitmap a(Bitmap bitmap) {
        try {
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setShader(new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
            Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            new Canvas(createBitmap).drawRoundRect(new RectF((float) this.f14338b, (float) this.f14338b, (float) (bitmap.getWidth() - this.f14338b), (float) (bitmap.getHeight() - this.f14338b)), (float) this.f14337a, (float) this.f14337a, paint);
            if (!(bitmap == createBitmap || bitmap == null || bitmap.isRecycled())) {
                bitmap.recycle();
            }
            return createBitmap;
        } catch (Exception unused) {
            return bitmap;
        }
    }

    public String a() {
        return "rounded";
    }
}
