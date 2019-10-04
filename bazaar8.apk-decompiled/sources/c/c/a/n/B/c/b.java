package c.c.a.n.b.c;

import android.view.View;
import android.widget.RadioGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import c.c.a.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.appdetail.report.ReportFragment;
import com.google.android.material.snackbar.Snackbar;
import h.f.b.j;

/* compiled from: ReportFragment.kt */
final class b implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ReportFragment f6221a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f6222b;

    public b(ReportFragment reportFragment, View view) {
        this.f6221a = reportFragment;
        this.f6222b = view;
    }

    public final void onClick(View view) {
        RadioGroup radioGroup = (RadioGroup) this.f6222b.findViewById(e.rgReport);
        j.a((Object) radioGroup, "view.rgReport");
        if (radioGroup.getCheckedRadioButtonId() == -1) {
            Snackbar.a((ConstraintLayout) this.f6221a.e(e.reportRoot), this.f6221a.b((int) R.string.pleaseSelectOneOptionFirst), -1).m();
        } else {
            this.f6221a.c(this.f6222b);
        }
    }
}
