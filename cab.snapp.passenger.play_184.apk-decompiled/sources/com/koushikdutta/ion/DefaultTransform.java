package com.koushikdutta.ion;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.koushikdutta.ion.bitmap.Transform;

class DefaultTransform implements Transform {
    static final Paint bilinearSamplingPaint = new Paint(2);
    final int resizeHeight;
    final int resizeWidth;
    final ScaleMode scaleMode;

    public DefaultTransform(int i, int i2, ScaleMode scaleMode2) {
        this.resizeWidth = i;
        this.resizeHeight = i2;
        if (scaleMode2 == null) {
            this.scaleMode = ScaleMode.FitXY;
        } else {
            this.scaleMode = scaleMode2;
        }
    }

    public Bitmap transform(Bitmap bitmap) {
        float f;
        Bitmap.Config config = bitmap.getConfig();
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i = this.resizeWidth;
        int i2 = this.resizeHeight;
        if (i <= 0) {
            i = (int) ((((float) bitmap.getWidth()) / ((float) bitmap.getHeight())) * ((float) i2));
        } else if (i2 <= 0) {
            i2 = (int) ((((float) bitmap.getHeight()) / ((float) bitmap.getWidth())) * ((float) i));
        }
        float f2 = (float) i;
        float f3 = (float) i2;
        RectF rectF = new RectF(0.0f, 0.0f, f2, f3);
        ScaleMode scaleMode2 = this.scaleMode;
        if (scaleMode2 == ScaleMode.CenterInside && (i <= bitmap.getWidth() || i2 <= bitmap.getHeight())) {
            scaleMode2 = ScaleMode.FitCenter;
        }
        if (scaleMode2 == ScaleMode.CenterInside) {
            float width = ((float) (i - bitmap.getWidth())) / 2.0f;
            float height = ((float) (i2 - bitmap.getHeight())) / 2.0f;
            rectF.set(width, height, ((float) bitmap.getWidth()) + width, ((float) bitmap.getHeight()) + height);
        } else if (scaleMode2 != ScaleMode.FitXY) {
            float width2 = f2 / ((float) bitmap.getWidth());
            float height2 = f3 / ((float) bitmap.getHeight());
            if (scaleMode2 == ScaleMode.CenterCrop) {
                f = Math.max(width2, height2);
            } else {
                f = Math.min(width2, height2);
            }
            if (f == 0.0f) {
                return bitmap;
            }
            float height3 = ((float) bitmap.getHeight()) * f;
            float width3 = (f2 - (((float) bitmap.getWidth()) * f)) / 2.0f;
            float f4 = (f3 - height3) / 2.0f;
            rectF.set(width3, f4, f2 - width3, f3 - f4);
        }
        if (rectF.width() == ((float) bitmap.getWidth()) && rectF.height() == ((float) bitmap.getHeight()) && rectF.top == 0.0f && rectF.left == 0.0f) {
            return bitmap;
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, config);
        new Canvas(createBitmap).drawBitmap(bitmap, null, rectF, bilinearSamplingPaint);
        return createBitmap;
    }

    public String key() {
        return this.scaleMode.name() + this.resizeWidth + "x" + this.resizeHeight;
    }
}
