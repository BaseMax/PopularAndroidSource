package d.a.a;

import android.app.Activity;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import b.b.a.C0202m;
import d.a.a;
import d.a.k;
import dagger.android.DispatchingAndroidInjector;

/* compiled from: DaggerAppCompatActivity */
public abstract class b extends C0202m implements k, h {
    public DispatchingAndroidInjector<Fragment> s;
    public DispatchingAndroidInjector<android.app.Fragment> t;

    public d.a.b<Fragment> i() {
        return this.s;
    }

    public void onCreate(Bundle bundle) {
        a.a((Activity) this);
        super.onCreate(bundle);
    }
}
