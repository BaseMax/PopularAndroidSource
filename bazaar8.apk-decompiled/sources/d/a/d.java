package d.a;

import android.app.Activity;
import android.app.Fragment;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import d.b;
import dagger.android.DispatchingAndroidInjector;

/* compiled from: DaggerApplication_MembersInjector */
public final class d implements b<c> {
    public static void a(c cVar, DispatchingAndroidInjector<Activity> dispatchingAndroidInjector) {
        cVar.f13648a = dispatchingAndroidInjector;
    }

    public static void b(c cVar, DispatchingAndroidInjector<BroadcastReceiver> dispatchingAndroidInjector) {
        cVar.f13649b = dispatchingAndroidInjector;
    }

    public static void c(c cVar, DispatchingAndroidInjector<ContentProvider> dispatchingAndroidInjector) {
        cVar.f13652e = dispatchingAndroidInjector;
    }

    public static void d(c cVar, DispatchingAndroidInjector<Fragment> dispatchingAndroidInjector) {
        cVar.f13650c = dispatchingAndroidInjector;
    }

    public static void e(c cVar, DispatchingAndroidInjector<Service> dispatchingAndroidInjector) {
        cVar.f13651d = dispatchingAndroidInjector;
    }

    public static void a(c cVar) {
        cVar.f();
    }
}
