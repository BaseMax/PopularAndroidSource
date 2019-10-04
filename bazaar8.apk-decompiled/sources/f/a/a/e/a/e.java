package f.a.a.e.a;

import android.view.View;
import ir.cafebazaar.inline.ui.changers.exceptions.ViewNotFoundException;

/* compiled from: ElementFetcher */
public class e implements q {

    /* renamed from: a  reason: collision with root package name */
    public String f14023a;

    public e(String str) {
        this.f14023a = str;
    }

    public View a(View view) {
        View findViewWithTag = view.findViewWithTag(this.f14023a);
        if (findViewWithTag != null) {
            return findViewWithTag;
        }
        throw new ViewNotFoundException("(tag: " + this.f14023a + ")");
    }
}
