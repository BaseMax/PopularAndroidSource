package com.squareup.picasso;

import android.content.Context;
import b.n;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.y;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

class g extends y {

    /* renamed from: a  reason: collision with root package name */
    final Context f5275a;

    g(Context context) {
        this.f5275a = context;
    }

    public boolean canHandleRequest(w wVar) {
        return FirebaseAnalytics.b.CONTENT.equals(wVar.uri.getScheme());
    }

    public y.a load(w wVar, int i) throws IOException {
        return new y.a(n.source(a(wVar)), Picasso.LoadedFrom.DISK);
    }

    /* access modifiers changed from: package-private */
    public final InputStream a(w wVar) throws FileNotFoundException {
        return this.f5275a.getContentResolver().openInputStream(wVar.uri);
    }
}
