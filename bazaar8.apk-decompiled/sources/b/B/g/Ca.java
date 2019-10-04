package b.b.g;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;

/* compiled from: VectorEnabledTintResources */
public class Ca extends Resources {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f2035a = false;

    /* renamed from: b  reason: collision with root package name */
    public final WeakReference<Context> f2036b;

    public Ca(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f2036b = new WeakReference<>(context);
    }

    public static boolean b() {
        return a() && Build.VERSION.SDK_INT <= 20;
    }

    public final Drawable a(int i2) {
        return super.getDrawable(i2);
    }

    public Drawable getDrawable(int i2) {
        Context context = (Context) this.f2036b.get();
        if (context != null) {
            return Q.a().a(context, this, i2);
        }
        return super.getDrawable(i2);
    }

    public static void a(boolean z) {
        f2035a = z;
    }

    public static boolean a() {
        return f2035a;
    }
}
