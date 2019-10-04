package com.bumptech.glide.load.resource.bitmap;

import android.media.ExifInterface;
import com.bumptech.glide.g.a;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.b.a.b;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class n implements ImageHeaderParser {
    public final ImageHeaderParser.ImageType getType(InputStream inputStream) throws IOException {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    public final ImageHeaderParser.ImageType getType(ByteBuffer byteBuffer) throws IOException {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    public final int getOrientation(InputStream inputStream, b bVar) throws IOException {
        int attributeInt = new ExifInterface(inputStream).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
        if (attributeInt == 0) {
            return -1;
        }
        return attributeInt;
    }

    public final int getOrientation(ByteBuffer byteBuffer, b bVar) throws IOException {
        return getOrientation(a.toStream(byteBuffer), bVar);
    }
}
