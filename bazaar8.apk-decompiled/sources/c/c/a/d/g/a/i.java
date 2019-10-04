package c.c.a.d.g.a;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.ImageView;
import b.i.a.n;
import b.i.a.q;
import c.b.a.c.d.a.t;
import c.b.a.e;
import c.b.a.g.g;
import h.f.b.j;
import kotlin.TypeCastException;

/* compiled from: ImageLoader.kt */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final i f4812a = new i();

    public static /* synthetic */ void a(i iVar, ImageView imageView, String str, Drawable drawable, Integer num, String str2, int i2, int i3, Object obj) {
        iVar.a(imageView, str, (i3 & 4) != 0 ? null : drawable, (i3 & 8) != 0 ? null : num, (i3 & 16) != 0 ? null : str2, (i3 & 32) != 0 ? 0 : i2);
    }

    public final void a(ImageView imageView, String str, Drawable drawable, Integer num, String str2, int i2) {
        j.b(imageView, "imageView");
        j.b(str, "imageURI");
        g gVar = new g();
        if (drawable != null) {
            j.a((Object) gVar.a(drawable), "placeholder(placeHolderDrawable)");
        } else if (num != null) {
            gVar.b(num.intValue());
        }
        if (i2 > 0) {
            gVar.a((c.b.a.c.i<Bitmap>) new t(i2));
        }
        c.a(imageView.getContext()).a(Uri.parse(str)).a(e.e(imageView.getContext()).a(str2)).a(gVar).a(imageView);
    }

    public final void a(ImageView imageView) {
        j.b(imageView, "imageView");
        if (imageView.getContext() instanceof Activity) {
            Context context = imageView.getContext();
            if (context == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.app.Activity");
            } else if (((Activity) context).isDestroyed()) {
                return;
            }
        }
        c.a(imageView.getContext()).a((View) imageView);
    }

    public final void a(Context context, String str, n.d dVar, String str2, String str3, String str4, q qVar, int i2) {
        j.b(context, "context");
        j.b(str, "url");
        j.b(dVar, "notificationBuilder");
        q qVar2 = qVar;
        j.b(qVar2, "managerCompat");
        Handler handler = new Handler(Looper.getMainLooper());
        h hVar = new h(context, str, str2, str4, dVar, str3, qVar2, i2);
        handler.post(hVar);
    }
}
