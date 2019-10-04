package com.bumptech.glide.load.b.d;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.b.b.h;
import com.bumptech.glide.load.b.d.d;
import java.util.HashMap;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final h f2182a;

    /* renamed from: b  reason: collision with root package name */
    private final e f2183b;
    private final DecodeFormat c;
    private final Handler d = new Handler(Looper.getMainLooper());
    private a e;

    public b(h hVar, e eVar, DecodeFormat decodeFormat) {
        this.f2182a = hVar;
        this.f2183b = eVar;
        this.c = decodeFormat;
    }

    public final void preFill(d.a... aVarArr) {
        a aVar = this.e;
        if (aVar != null) {
            aVar.cancel();
        }
        d[] dVarArr = new d[aVarArr.length];
        for (int i = 0; i < aVarArr.length; i++) {
            d.a aVar2 = aVarArr[i];
            if (aVar2.c == null) {
                aVar2.setConfig(this.c == DecodeFormat.PREFER_ARGB_8888 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            }
            dVarArr[i] = new d(aVar2.f2188a, aVar2.f2189b, aVar2.c, aVar2.d);
        }
        long maxSize = (this.f2182a.getMaxSize() - this.f2182a.getCurrentSize()) + this.f2183b.getMaxSize();
        int i2 = 0;
        for (d dVar : dVarArr) {
            i2 += dVar.e;
        }
        float f = ((float) maxSize) / ((float) i2);
        HashMap hashMap = new HashMap();
        for (d dVar2 : dVarArr) {
            hashMap.put(dVar2, Integer.valueOf(Math.round(((float) dVar2.e) * f) / k.getBitmapByteSize(dVar2.f2187b, dVar2.c, dVar2.d)));
        }
        this.e = new a(this.f2183b, this.f2182a, new c(hashMap));
        this.d.post(this.e);
    }
}
