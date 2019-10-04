package com.squareup.picasso;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.y;
import java.io.IOException;

final class z extends y {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5313a;

    z(Context context) {
        this.f5313a = context;
    }

    public final boolean canHandleRequest(w wVar) {
        if (wVar.resourceId != 0) {
            return true;
        }
        return "android.resource".equals(wVar.uri.getScheme());
    }

    public final y.a load(w wVar, int i) throws IOException {
        Resources a2 = af.a(this.f5313a, wVar);
        int a3 = af.a(a2, wVar);
        BitmapFactory.Options b2 = b(wVar);
        if (a(b2)) {
            BitmapFactory.decodeResource(a2, a3, b2);
            a(wVar.targetWidth, wVar.targetHeight, b2, wVar);
        }
        return new y.a(BitmapFactory.decodeResource(a2, a3, b2), Picasso.LoadedFrom.DISK);
    }
}
