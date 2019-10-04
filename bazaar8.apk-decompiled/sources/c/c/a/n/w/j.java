package c.c.a.n.w;

import android.view.MotionEvent;
import android.view.View;
import com.farsitel.bazaar.ui.search.SearchFragment;

/* compiled from: SearchFragment.kt */
final class j implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SearchFragment f7046a;

    public j(SearchFragment searchFragment) {
        this.f7046a = searchFragment;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (!(motionEvent == null || motionEvent.getAction() != 0 || SearchFragment.e(this.f7046a).f() == null)) {
            this.f7046a.a(SearchFragment.SearchViewMode.PREDICTION_RESULT);
        }
        return false;
    }
}
