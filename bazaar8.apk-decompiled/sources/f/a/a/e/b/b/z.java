package f.a.a.e.b.b;

import android.widget.FrameLayout;
import android.widget.PopupWindow;
import androidx.core.widget.NestedScrollView;
import com.crashlytics.android.core.MetaDataStore;
import f.a.a.a.a.a;
import f.a.a.a.a.b;

/* compiled from: InlinePopup */
class z implements PopupWindow.OnDismissListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ FrameLayout.LayoutParams f14213a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ NestedScrollView f14214b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ A f14215c;

    public z(A a2, FrameLayout.LayoutParams layoutParams, NestedScrollView nestedScrollView) {
        this.f14215c = a2;
        this.f14213a = layoutParams;
        this.f14214b = nestedScrollView;
    }

    public void onDismiss() {
        FrameLayout.LayoutParams layoutParams = this.f14213a;
        if (layoutParams != null) {
            this.f14214b.setLayoutParams(layoutParams);
        }
        if (this.f14215c.f14113b != null) {
            this.f14215c.f14113b.onDismiss();
        }
        b a2 = b.a();
        a aVar = new a();
        aVar.a(System.currentTimeMillis());
        aVar.a(MetaDataStore.USERDATA_SUFFIX);
        aVar.b("inline_popup");
        aVar.a("action", "dismiss");
        aVar.c(this.f14215c.f14114c.h().f());
        aVar.b("path", this.f14215c.f14114c.f().w().c());
        a2.a(aVar);
    }
}
