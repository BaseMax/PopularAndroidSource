package c.c.a.n.b.c;

import android.view.View;
import android.widget.RadioGroup;
import c.c.a.e;
import com.google.android.material.button.MaterialButton;
import h.f.b.j;

/* compiled from: ReportFragment.kt */
final class c implements RadioGroup.OnCheckedChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View f6223a;

    public c(View view) {
        this.f6223a = view;
    }

    public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
        MaterialButton materialButton = (MaterialButton) this.f6223a.findViewById(e.btSubmitReport);
        j.a((Object) materialButton, "view.btSubmitReport");
        materialButton.setEnabled(true);
    }
}
