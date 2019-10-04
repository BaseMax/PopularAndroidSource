package b.b.g;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* compiled from: TintContextWrapper */
public class ma extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f2207a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public static ArrayList<WeakReference<ma>> f2208b;

    /* renamed from: c  reason: collision with root package name */
    public final Resources f2209c;

    /* renamed from: d  reason: collision with root package name */
    public final Resources.Theme f2210d;

    public ma(Context context) {
        super(context);
        if (Ca.b()) {
            this.f2209c = new Ca(this, context.getResources());
            this.f2210d = this.f2209c.newTheme();
            this.f2210d.setTo(context.getTheme());
            return;
        }
        this.f2209c = new oa(this, context.getResources());
        this.f2210d = null;
    }

    public static boolean a(Context context) {
        if ((context instanceof ma) || (context.getResources() instanceof oa) || (context.getResources() instanceof Ca)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 21 || Ca.b()) {
            return true;
        }
        return false;
    }

    public static Context b(Context context) {
        if (!a(context)) {
            return context;
        }
        synchronized (f2207a) {
            if (f2208b == null) {
                f2208b = new ArrayList<>();
            } else {
                for (int size = f2208b.size() - 1; size >= 0; size--) {
                    WeakReference weakReference = f2208b.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        f2208b.remove(size);
                    }
                }
                for (int size2 = f2208b.size() - 1; size2 >= 0; size2--) {
                    WeakReference weakReference2 = f2208b.get(size2);
                    ma maVar = weakReference2 != null ? (ma) weakReference2.get() : null;
                    if (maVar != null && maVar.getBaseContext() == context) {
                        return maVar;
                    }
                }
            }
            ma maVar2 = new ma(context);
            f2208b.add(new WeakReference(maVar2));
            return maVar2;
        }
    }

    public AssetManager getAssets() {
        return this.f2209c.getAssets();
    }

    public Resources getResources() {
        return this.f2209c;
    }

    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f2210d;
        return theme == null ? super.getTheme() : theme;
    }

    public void setTheme(int i2) {
        Resources.Theme theme = this.f2210d;
        if (theme == null) {
            super.setTheme(i2);
        } else {
            theme.applyStyle(i2, true);
        }
    }
}
