package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.common.internal.av;

public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    final b f2918a;

    /* renamed from: b  reason: collision with root package name */
    protected int f2919b = 0;
    boolean c = true;
    private int d = 0;
    private boolean e = false;
    private boolean f = false;
    private boolean g = true;

    public a(Uri uri, int i) {
        this.f2918a = new b(uri);
        this.f2919b = i;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (this.g) {
            a(null, false, true, false);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(Context context, Bitmap bitmap, boolean z) {
        av.zzv(bitmap);
        a(new BitmapDrawable(context.getResources(), bitmap), z, false, true);
    }

    /* access modifiers changed from: package-private */
    public final void a(Context context, boolean z) {
        int i = this.f2919b;
        a(i != 0 ? context.getResources().getDrawable(i) : null, z, false, false);
    }

    /* access modifiers changed from: protected */
    public abstract void a(Drawable drawable, boolean z, boolean z2, boolean z3);
}
