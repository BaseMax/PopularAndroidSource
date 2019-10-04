package b.o.a;

import android.graphics.Rect;
import android.view.View;
import androidx.fragment.app.Fragment;
import b.f.C0243b;
import b.o.a.H;
import java.util.ArrayList;

/* compiled from: FragmentTransition */
class G implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Q f3012a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0243b f3013b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f3014c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ H.a f3015d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3016e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ View f3017f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Fragment f3018g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ Fragment f3019h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ boolean f3020i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3021j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ Object f3022k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ Rect f3023l;

    public G(Q q, C0243b bVar, Object obj, H.a aVar, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
        this.f3012a = q;
        this.f3013b = bVar;
        this.f3014c = obj;
        this.f3015d = aVar;
        this.f3016e = arrayList;
        this.f3017f = view;
        this.f3018g = fragment;
        this.f3019h = fragment2;
        this.f3020i = z;
        this.f3021j = arrayList2;
        this.f3022k = obj2;
        this.f3023l = rect;
    }

    public void run() {
        C0243b<String, View> a2 = H.a(this.f3012a, (C0243b<String, String>) this.f3013b, this.f3014c, this.f3015d);
        if (a2 != null) {
            this.f3016e.addAll(a2.values());
            this.f3016e.add(this.f3017f);
        }
        H.a(this.f3018g, this.f3019h, this.f3020i, a2, false);
        Object obj = this.f3014c;
        if (obj != null) {
            this.f3012a.b(obj, (ArrayList<View>) this.f3021j, (ArrayList<View>) this.f3016e);
            View a3 = H.a(a2, this.f3015d, this.f3022k, this.f3020i);
            if (a3 != null) {
                this.f3012a.a(a3, this.f3023l);
            }
        }
    }
}
