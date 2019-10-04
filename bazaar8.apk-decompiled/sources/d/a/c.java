package d.a;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import dagger.android.DispatchingAndroidInjector;

/* compiled from: DaggerApplication */
public abstract class c extends Application implements h, k, l, i, j {

    /* renamed from: a  reason: collision with root package name */
    public DispatchingAndroidInjector<Activity> f13648a;

    /* renamed from: b  reason: collision with root package name */
    public DispatchingAndroidInjector<BroadcastReceiver> f13649b;

    /* renamed from: c  reason: collision with root package name */
    public DispatchingAndroidInjector<Fragment> f13650c;

    /* renamed from: d  reason: collision with root package name */
    public DispatchingAndroidInjector<Service> f13651d;

    /* renamed from: e  reason: collision with root package name */
    public DispatchingAndroidInjector<ContentProvider> f13652e;

    /* renamed from: f  reason: collision with root package name */
    public volatile boolean f13653f = true;

    public abstract b<? extends c> d();

    public final void e() {
        if (this.f13653f) {
            synchronized (this) {
                if (this.f13653f) {
                    d().a(this);
                    if (this.f13653f) {
                        throw new IllegalStateException("The AndroidInjector returned from applicationInjector() did not inject the DaggerApplication");
                    }
                }
            }
        }
    }

    public void f() {
        this.f13653f = false;
    }

    public void onCreate() {
        super.onCreate();
        e();
    }

    public DispatchingAndroidInjector<BroadcastReceiver> a() {
        return this.f13649b;
    }

    public DispatchingAndroidInjector<Service> b() {
        return this.f13651d;
    }

    public DispatchingAndroidInjector<Activity> c() {
        return this.f13648a;
    }
}
