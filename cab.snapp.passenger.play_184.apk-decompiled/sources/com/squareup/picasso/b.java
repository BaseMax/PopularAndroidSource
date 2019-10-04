package com.squareup.picasso;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import b.n;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.y;
import java.io.IOException;

final class b extends y {

    /* renamed from: a  reason: collision with root package name */
    private static final int f5264a = 22;

    /* renamed from: b  reason: collision with root package name */
    private final Context f5265b;
    private final Object c = new Object();
    private AssetManager d;

    b(Context context) {
        this.f5265b = context;
    }

    public final boolean canHandleRequest(w wVar) {
        Uri uri = wVar.uri;
        if (!"file".equals(uri.getScheme()) || uri.getPathSegments().isEmpty() || !"android_asset".equals(uri.getPathSegments().get(0))) {
            return false;
        }
        return true;
    }

    public final y.a load(w wVar, int i) throws IOException {
        if (this.d == null) {
            synchronized (this.c) {
                if (this.d == null) {
                    this.d = this.f5265b.getAssets();
                }
            }
        }
        return new y.a(n.source(this.d.open(wVar.uri.toString().substring(f5264a))), Picasso.LoadedFrom.DISK);
    }
}
