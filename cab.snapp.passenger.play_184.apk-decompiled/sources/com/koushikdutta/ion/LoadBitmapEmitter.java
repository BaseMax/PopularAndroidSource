package com.koushikdutta.ion;

class LoadBitmapEmitter extends LoadBitmapBase {
    final boolean animateGif;

    public LoadBitmapEmitter(Ion ion, String str, boolean z, boolean z2) {
        super(ion, str, z);
        this.animateGif = z2;
    }
}
