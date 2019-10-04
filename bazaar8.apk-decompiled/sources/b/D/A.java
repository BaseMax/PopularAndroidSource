package b.D;

import android.view.View;
import android.view.ViewGroup;

/* compiled from: Scene */
public class A {

    /* renamed from: a  reason: collision with root package name */
    public ViewGroup f1073a;

    /* renamed from: b  reason: collision with root package name */
    public Runnable f1074b;

    public void a() {
        if (a(this.f1073a) == this) {
            Runnable runnable = this.f1074b;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public static void a(View view, A a2) {
        view.setTag(C0178y.transition_current_scene, a2);
    }

    public static A a(View view) {
        return (A) view.getTag(C0178y.transition_current_scene);
    }
}
