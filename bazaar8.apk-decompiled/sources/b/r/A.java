package b.r;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import androidx.lifecycle.Lifecycle;

/* compiled from: ReportFragment */
public class A extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    public a f3140a;

    /* compiled from: ReportFragment */
    interface a {
        void a();

        void b();

        void onCreate();
    }

    public static A a(Activity activity) {
        return (A) activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
    }

    public static void b(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new A(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    public final void c(a aVar) {
        if (aVar != null) {
            aVar.a();
        }
    }

    public void d(a aVar) {
        this.f3140a = aVar;
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a(this.f3140a);
        a(Lifecycle.Event.ON_CREATE);
    }

    public void onDestroy() {
        super.onDestroy();
        a(Lifecycle.Event.ON_DESTROY);
        this.f3140a = null;
    }

    public void onPause() {
        super.onPause();
        a(Lifecycle.Event.ON_PAUSE);
    }

    public void onResume() {
        super.onResume();
        b(this.f3140a);
        a(Lifecycle.Event.ON_RESUME);
    }

    public void onStart() {
        super.onStart();
        c(this.f3140a);
        a(Lifecycle.Event.ON_START);
    }

    public void onStop() {
        super.onStop();
        a(Lifecycle.Event.ON_STOP);
    }

    public final void a(a aVar) {
        if (aVar != null) {
            aVar.onCreate();
        }
    }

    public final void a(Lifecycle.Event event) {
        Activity activity = getActivity();
        if (activity instanceof n) {
            ((n) activity).b().b(event);
            return;
        }
        if (activity instanceof k) {
            Lifecycle b2 = ((k) activity).b();
            if (b2 instanceof m) {
                ((m) b2).b(event);
            }
        }
    }

    public final void b(a aVar) {
        if (aVar != null) {
            aVar.b();
        }
    }
}
