package com.mapbox.mapboxsdk.text;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Typeface;

public class LocalGlyphRasterizer {
    private final Bitmap bitmap = Bitmap.createBitmap(35, 35, Bitmap.Config.ARGB_8888);
    private final Canvas canvas;
    private final Paint paint = new Paint();

    LocalGlyphRasterizer() {
        this.paint.setAntiAlias(true);
        this.paint.setTextSize(24.0f);
        this.canvas = new Canvas();
        this.canvas.setBitmap(this.bitmap);
    }

    /* access modifiers changed from: protected */
    public Bitmap drawGlyphBitmap(String str, boolean z, char c) {
        this.paint.setTypeface(Typeface.create(str, z ? 1 : 0));
        this.canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        this.canvas.drawText(String.valueOf(c), 0.0f, 20.0f, this.paint);
        return this.bitmap;
    }
}
