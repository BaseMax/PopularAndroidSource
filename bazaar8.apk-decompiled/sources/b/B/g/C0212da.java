package b.b.g;

import android.view.KeyEvent;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;

/* renamed from: b.b.g.da  reason: case insensitive filesystem */
/* compiled from: SearchView */
class C0212da implements TextView.OnEditorActionListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SearchView f2160a;

    public C0212da(SearchView searchView) {
        this.f2160a = searchView;
    }

    public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        this.f2160a.j();
        return true;
    }
}
