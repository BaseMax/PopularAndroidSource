package b.o.a;

import android.graphics.Rect;
import android.view.View;
import androidx.fragment.app.Fragment;
import b.f.C0243b;

/* compiled from: FragmentTransition */
class F implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Fragment f3005a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Fragment f3006b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ boolean f3007c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0243b f3008d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ View f3009e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Q f3010f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Rect f3011g;

    public F(Fragment fragment, Fragment fragment2, boolean z, C0243b bVar, View view, Q q, Rect rect) {
        this.f3005a = fragment;
        this.f3006b = fragment2;
        this.f3007c = z;
        this.f3008d = bVar;
        this.f3009e = view;
        this.f3010f = q;
        this.f3011g = rect;
    }

    public void run() {
        H.a(this.f3005a, this.f3006b, this.f3007c, (C0243b<String, View>) this.f3008d, false);
        View view = this.f3009e;
        if (view != null) {
            this.f3010f.a(view, this.f3011g);
        }
    }
}
