package com.squareup.picasso;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import b.n;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.y;
import java.io.IOException;

final class l extends g {
    l(Context context) {
        super(context);
    }

    public final boolean canHandleRequest(w wVar) {
        return "file".equals(wVar.uri.getScheme());
    }

    public final y.a load(w wVar, int i) throws IOException {
        return new y.a(null, n.source(a(wVar)), Picasso.LoadedFrom.DISK, new ExifInterface(wVar.uri.getPath()).getAttributeInt(ExifInterface.TAG_ORIENTATION, 1));
    }
}
