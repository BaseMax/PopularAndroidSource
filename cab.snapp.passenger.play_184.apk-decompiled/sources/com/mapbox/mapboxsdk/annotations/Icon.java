package com.mapbox.mapboxsdk.annotations;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;

@Deprecated
public class Icon {
    private Bitmap mBitmap;
    private String mId;

    Icon(String str, Bitmap bitmap) {
        this.mId = str;
        this.mBitmap = bitmap;
    }

    public String getId() {
        return this.mId;
    }

    public Bitmap getBitmap() {
        Bitmap bitmap = this.mBitmap;
        if (!(bitmap == null || bitmap.getConfig() == Bitmap.Config.ARGB_8888)) {
            this.mBitmap = this.mBitmap.copy(Bitmap.Config.ARGB_8888, false);
        }
        return this.mBitmap;
    }

    public float getScale() {
        Bitmap bitmap = this.mBitmap;
        if (bitmap != null) {
            float density = (float) bitmap.getDensity();
            if (density == 0.0f) {
                density = 160.0f;
            }
            return density / 160.0f;
        }
        throw new IllegalStateException("Required to set a Icon before calling getScale");
    }

    public byte[] toBytes() {
        Bitmap bitmap = this.mBitmap;
        if (bitmap != null) {
            ByteBuffer allocate = ByteBuffer.allocate(bitmap.getRowBytes() * this.mBitmap.getHeight());
            this.mBitmap.copyPixelsToBuffer(allocate);
            return allocate.array();
        }
        throw new IllegalStateException("Required to set a Icon before calling toBytes");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Icon icon = (Icon) obj;
            return this.mBitmap.equals(icon.mBitmap) && this.mId.equals(icon.mId);
        }
    }

    public int hashCode() {
        Bitmap bitmap = this.mBitmap;
        int hashCode = bitmap != null ? bitmap.hashCode() : 0;
        String str = this.mId;
        return str != null ? (hashCode * 31) + str.hashCode() : hashCode;
    }
}
