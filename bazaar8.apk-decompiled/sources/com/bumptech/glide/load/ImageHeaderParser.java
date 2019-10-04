package com.bumptech.glide.load;

import c.b.a.c.b.a.b;
import java.io.InputStream;
import java.nio.ByteBuffer;

public interface ImageHeaderParser {

    public enum ImageType {
        GIF(true),
        JPEG(false),
        RAW(false),
        PNG_A(true),
        PNG(false),
        WEBP_A(true),
        WEBP(false),
        UNKNOWN(false);
        
        public final boolean hasAlpha;

        /* access modifiers changed from: public */
        ImageType(boolean z) {
            this.hasAlpha = z;
        }

        public boolean hasAlpha() {
            return this.hasAlpha;
        }
    }

    int a(InputStream inputStream, b bVar);

    ImageType a(InputStream inputStream);

    ImageType a(ByteBuffer byteBuffer);
}
