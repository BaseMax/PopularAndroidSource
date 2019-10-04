package c.c.a.n.b.c;

import android.view.MotionEvent;
import android.view.View;
import com.farsitel.bazaar.ui.appdetail.report.ReportFragment;
import h.f.b.j;

/* compiled from: ReportFragment.kt */
final class e implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ReportFragment f6225a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f6226b;

    public e(ReportFragment reportFragment, View view) {
        this.f6225a = reportFragment;
        this.f6226b = view;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        j.a((Object) motionEvent, "event");
        if (motionEvent.getAction() == 1) {
            ReportFragment.a(this.f6225a).postDelayed(new d(this), 300);
        }
        return false;
    }
}
