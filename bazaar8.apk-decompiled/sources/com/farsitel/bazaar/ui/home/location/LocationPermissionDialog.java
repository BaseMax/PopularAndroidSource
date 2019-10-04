package com.farsitel.bazaar.ui.home.location;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import c.c.a.d.f.l;
import c.c.a.d.f.r;
import c.c.a.e;
import c.c.a.n.x.a;
import com.farsitel.bazaar.R;
import com.google.android.material.button.MaterialButton;
import h.f.b.j;
import h.h;
import java.util.HashMap;

/* compiled from: LocationPermissionDialog.kt */
public final class LocationPermissionDialog extends l<h> implements View.OnClickListener {
    public final String sa = "LocationPermissionDialog";
    public int ta;
    public a ua;
    public HashMap va;

    public void Qa() {
        HashMap hashMap = this.va;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public String Sa() {
        return this.sa;
    }

    public int Ta() {
        return this.ta;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.dialog_location_permission, viewGroup, false);
    }

    public View e(int i2) {
        if (this.va == null) {
            this.va = new HashMap();
        }
        View view = (View) this.va.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.va.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public void onClick(View view) {
        Integer valueOf = view != null ? Integer.valueOf(view.getId()) : null;
        boolean z = true;
        if (valueOf != null && valueOf.intValue() == R.id.commitButton) {
            a aVar = this.ua;
            if (aVar != null) {
                AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) e(e.dontShowAgainShowCheckBox);
                j.a((Object) appCompatCheckBox, "dontShowAgainShowCheckBox");
                if (appCompatCheckBox.isChecked()) {
                    z = false;
                }
                aVar.d(z);
                r Ra = Ra();
                if (Ra != null) {
                    Ra.a(h.f14579a);
                }
                Ma();
                return;
            }
            j.c("settingViewModel");
            throw null;
        } else if (valueOf != null && valueOf.intValue() == R.id.cancelButton) {
            a aVar2 = this.ua;
            if (aVar2 != null) {
                AppCompatCheckBox appCompatCheckBox2 = (AppCompatCheckBox) e(e.dontShowAgainShowCheckBox);
                j.a((Object) appCompatCheckBox2, "dontShowAgainShowCheckBox");
                if (appCompatCheckBox2.isChecked()) {
                    z = false;
                }
                aVar2.d(z);
                r Ra2 = Ra();
                if (Ra2 != null) {
                    Ra2.onCancel();
                }
                Ma();
                return;
            }
            j.c("settingViewModel");
            throw null;
        }
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        ((MaterialButton) e(e.commitButton)).setOnClickListener(this);
        ((AppCompatButton) e(e.cancelButton)).setOnClickListener(this);
        ((AppCompatCheckBox) e(e.dontShowAgainShowCheckBox)).setOnCheckedChangeListener(new a(this));
    }
}
