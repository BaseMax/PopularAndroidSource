package com.bumptech.glide.load;

import com.bumptech.glide.load.b.a.b;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public interface ImageHeaderParser {
    public static final int UNKNOWN_ORIENTATION = -1;

    public enum ImageType {
        GIF(true),
        JPEG(false),
        RAW(false),
        PNG_A(true),
        PNG(false),
        WEBP_A(true),
        WEBP(false),
        UNKNOWN(false);
        

        /* renamed from: a  reason: collision with root package name */
        private final boolean f2092a;

        private ImageType(boolean z) {
            this.f2092a = z;
        }

        public final boolean hasAlpha() {
            return this.f2092a;
        }
    }

    int getOrientation(InputStream inputStream, b bVar) throws IOException;

    int getOrientation(ByteBuffer byteBuffer, b bVar) throws IOException;

    ImageType getType(InputStream inputStream) throws IOException;

    ImageType getType(ByteBuffer byteBuffer) throws IOException;
}
