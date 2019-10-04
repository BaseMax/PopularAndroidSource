package d.a.a;

import android.content.Context;
import androidx.fragment.app.Fragment;
import b.b.a.C;
import d.a.b;
import dagger.android.DispatchingAndroidInjector;

/* compiled from: DaggerAppCompatDialogFragment */
public abstract class d extends C implements h {
    public DispatchingAndroidInjector<Fragment> ja;

    public void a(Context context) {
        a.b(this);
        super.a(context);
    }

    public b<Fragment> i() {
        return this.ja;
    }
}
