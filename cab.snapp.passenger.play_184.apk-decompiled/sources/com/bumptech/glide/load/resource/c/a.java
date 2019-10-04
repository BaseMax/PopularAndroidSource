package com.bumptech.glide.load.resource.c;

import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;
import java.io.File;

public final class a implements h<File, File> {
    public final boolean handles(File file, g gVar) {
        return true;
    }

    public final v<File> decode(File file, int i, int i2, g gVar) {
        return new b(file);
    }
}
