package b.x;

import android.view.View;
import android.widget.AdapterView;
import androidx.preference.DropDownPreference;

/* renamed from: b.x.c  reason: case insensitive filesystem */
/* compiled from: DropDownPreference */
class C0320c implements AdapterView.OnItemSelectedListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ DropDownPreference f3360a;

    public C0320c(DropDownPreference dropDownPreference) {
        this.f3360a = dropDownPreference;
    }

    public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
        if (i2 >= 0) {
            String charSequence = this.f3360a.T()[i2].toString();
            if (!charSequence.equals(this.f3360a.U()) && this.f3360a.a((Object) charSequence)) {
                this.f3360a.e(charSequence);
            }
        }
    }

    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
