package com.bumptech.glide.load.c;

import com.bumptech.glide.load.a;
import com.bumptech.glide.load.g;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

public final class c implements a<ByteBuffer> {
    public final boolean encode(ByteBuffer byteBuffer, File file, g gVar) {
        try {
            com.bumptech.glide.g.a.toFile(byteBuffer, file);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
