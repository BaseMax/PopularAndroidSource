package com.bumptech.glide.b;

import android.graphics.Bitmap;
import java.io.InputStream;
import java.nio.ByteBuffer;

public interface a {
    public static final int STATUS_FORMAT_ERROR = 1;
    public static final int STATUS_OK = 0;
    public static final int STATUS_OPEN_ERROR = 2;
    public static final int STATUS_PARTIAL_DECODE = 3;
    public static final int TOTAL_ITERATION_COUNT_FOREVER = 0;

    /* renamed from: com.bumptech.glide.b.a$a  reason: collision with other inner class name */
    public interface C0033a {
        Bitmap obtain(int i, int i2, Bitmap.Config config);

        byte[] obtainByteArray(int i);

        int[] obtainIntArray(int i);

        void release(Bitmap bitmap);

        void release(byte[] bArr);

        void release(int[] iArr);
    }

    void advance();

    void clear();

    int getByteSize();

    int getCurrentFrameIndex();

    ByteBuffer getData();

    int getDelay(int i);

    int getFrameCount();

    int getHeight();

    @Deprecated
    int getLoopCount();

    int getNetscapeLoopCount();

    int getNextDelay();

    Bitmap getNextFrame();

    int getStatus();

    int getTotalIterationCount();

    int getWidth();

    int read(InputStream inputStream, int i);

    int read(byte[] bArr);

    void resetFrameIndex();

    void setData(c cVar, ByteBuffer byteBuffer);

    void setData(c cVar, ByteBuffer byteBuffer, int i);

    void setData(c cVar, byte[] bArr);

    void setDefaultBitmapConfig(Bitmap.Config config);
}
