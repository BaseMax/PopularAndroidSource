package c.e.a.c.f;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* compiled from: BottomSheetBehavior */
class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View f11272a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f11273b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f11274c;

    public a(BottomSheetBehavior bottomSheetBehavior, View view, int i2) {
        this.f11274c = bottomSheetBehavior;
        this.f11272a = view;
        this.f11273b = i2;
    }

    public void run() {
        this.f11274c.a(this.f11272a, this.f11273b);
    }
}
