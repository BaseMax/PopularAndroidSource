package com.bumptech.glide.load.resource.e;

import com.bumptech.glide.g.a;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.resource.a.b;
import com.bumptech.glide.load.resource.d.c;

public final class d implements e<c, byte[]> {
    public final v<byte[]> transcode(v<c> vVar, g gVar) {
        return new b(a.toBytes(vVar.get().getBuffer()));
    }
}
