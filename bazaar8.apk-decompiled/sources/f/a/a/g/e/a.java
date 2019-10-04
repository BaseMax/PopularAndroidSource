package f.a.a.g.e;

import android.view.View;
import androidx.core.widget.NestedScrollView;

/* compiled from: InlineListAdapter */
class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ NestedScrollView f14475a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f14476b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ b f14477c;

    public a(b bVar, NestedScrollView nestedScrollView, View view) {
        this.f14477c = bVar;
        this.f14475a = nestedScrollView;
        this.f14476b = view;
    }

    public void run() {
        this.f14475a.e(130);
        View view = this.f14476b;
        if (view != null) {
            view.requestFocus();
        }
    }
}
