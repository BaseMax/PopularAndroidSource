package b.b.g;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* compiled from: TintResources */
public class oa extends S {

    /* renamed from: b  reason: collision with root package name */
    public final WeakReference<Context> f2219b;

    public oa(Context context, Resources resources) {
        super(resources);
        this.f2219b = new WeakReference<>(context);
    }

    public Drawable getDrawable(int i2) {
        Drawable drawable = super.getDrawable(i2);
        Context context = (Context) this.f2219b.get();
        if (!(drawable == null || context == null)) {
            Q.a().a(context, i2, drawable);
        }
        return drawable;
    }
}
