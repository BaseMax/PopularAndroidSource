package b.b.g;

import android.view.View;
import android.widget.AdapterView;

/* compiled from: ListPopupWindow */
class M implements AdapterView.OnItemSelectedListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ N f2081a;

    public M(N n) {
        this.f2081a = n;
    }

    public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
        if (i2 != -1) {
            I i3 = this.f2081a.f2087f;
            if (i3 != null) {
                i3.setListSelectionHidden(false);
            }
        }
    }

    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
