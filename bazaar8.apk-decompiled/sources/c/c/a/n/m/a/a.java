package c.c.a.n.m.a;

import android.widget.CompoundButton;
import c.c.a.e;
import com.farsitel.bazaar.ui.home.location.LocationPermissionDialog;
import com.google.android.material.button.MaterialButton;
import h.f.b.j;

/* compiled from: LocationPermissionDialog.kt */
final class a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ LocationPermissionDialog f6679a;

    public a(LocationPermissionDialog locationPermissionDialog) {
        this.f6679a = locationPermissionDialog;
    }

    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        MaterialButton materialButton = (MaterialButton) this.f6679a.e(e.commitButton);
        j.a((Object) materialButton, "commitButton");
        materialButton.setEnabled(!z);
    }
}
