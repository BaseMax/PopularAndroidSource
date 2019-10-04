package c.e.a.b.d.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import c.e.a.b.d.d.C0780c;
import c.e.a.b.g.c.d;

public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public int f9939a;

    public final void a(Context context, Bitmap bitmap, boolean z) {
        C0780c.a((Object) bitmap);
        a(new BitmapDrawable(context.getResources(), bitmap), z, false, true);
    }

    public abstract void a(Drawable drawable, boolean z, boolean z2, boolean z3);

    public final void a(Context context, d dVar, boolean z) {
        int i2 = this.f9939a;
        a(i2 != 0 ? context.getResources().getDrawable(i2) : null, z, false, false);
    }
}
