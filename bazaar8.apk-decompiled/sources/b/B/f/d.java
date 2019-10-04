package b.b.f;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import b.b.i;

/* compiled from: ContextThemeWrapper */
public class d extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    public int f1948a;

    /* renamed from: b  reason: collision with root package name */
    public Resources.Theme f1949b;

    /* renamed from: c  reason: collision with root package name */
    public LayoutInflater f1950c;

    /* renamed from: d  reason: collision with root package name */
    public Configuration f1951d;

    /* renamed from: e  reason: collision with root package name */
    public Resources f1952e;

    public d() {
        super(null);
    }

    public final Resources a() {
        if (this.f1952e == null) {
            Configuration configuration = this.f1951d;
            if (configuration == null) {
                this.f1952e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.f1952e = createConfigurationContext(configuration).getResources();
            }
        }
        return this.f1952e;
    }

    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public int b() {
        return this.f1948a;
    }

    public final void c() {
        boolean z = this.f1949b == null;
        if (z) {
            this.f1949b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f1949b.setTo(theme);
            }
        }
        a(this.f1949b, this.f1948a, z);
    }

    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    public Resources getResources() {
        return a();
    }

    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f1950c == null) {
            this.f1950c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f1950c;
    }

    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f1949b;
        if (theme != null) {
            return theme;
        }
        if (this.f1948a == 0) {
            this.f1948a = i.Theme_AppCompat_Light;
        }
        c();
        return this.f1949b;
    }

    public void setTheme(int i2) {
        if (this.f1948a != i2) {
            this.f1948a = i2;
            c();
        }
    }

    public d(Context context, int i2) {
        super(context);
        this.f1948a = i2;
    }

    public d(Context context, Resources.Theme theme) {
        super(context);
        this.f1949b = theme;
    }

    public void a(Resources.Theme theme, int i2, boolean z) {
        theme.applyStyle(i2, true);
    }
}
