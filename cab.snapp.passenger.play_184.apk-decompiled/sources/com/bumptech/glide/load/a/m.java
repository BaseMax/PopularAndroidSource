package com.bumptech.glide.load.a;

import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;

public final class m extends b<InputStream> {
    /* access modifiers changed from: protected */
    public final /* synthetic */ void a(Object obj) throws IOException {
        ((InputStream) obj).close();
    }

    public m(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    public final Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object a(AssetManager assetManager, String str) throws IOException {
        return assetManager.open(str);
    }
}
