package com.bumptech.glide.load.resource.d;

import com.bumptech.glide.g.a;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.i;
import java.io.File;
import java.io.IOException;

public final class d implements i<c> {
    public final EncodeStrategy getEncodeStrategy(g gVar) {
        return EncodeStrategy.SOURCE;
    }

    public final boolean encode(v<c> vVar, File file, g gVar) {
        try {
            a.toFile(vVar.get().getBuffer(), file);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
