package com.farsitel.bazaar.ui.app.permission;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import c.c.a.c.h.e;
import c.c.a.d.f.l;
import c.c.a.d.f.r;
import c.c.a.n.a.a.a;
import com.farsitel.bazaar.R;
import com.google.android.material.button.MaterialButton;
import h.f.b.j;
import h.h;
import java.util.HashMap;

/* compiled from: DialogGoToBazaarSettingForPermission.kt */
public final class DialogGoToBazaarSettingForPermission extends l<h> implements View.OnClickListener {
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

    public final void Za() {
        Context Ha = Ha();
        e eVar = e.f4731a;
        String packageName = Ha.getPackageName();
        j.a((Object) packageName, "packageName");
        Ha.startActivity(eVar.a(packageName));
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.dialog_go_to_setting_for_permission, viewGroup, false);
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        a.C0088a aVar = a.f6176a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.ua = aVar.a(C);
            return;
        }
        j.a();
        throw null;
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
        if (valueOf != null && valueOf.intValue() == R.id.commitButton) {
            r Ra = Ra();
            if (Ra != null) {
                Ra.a(h.f14579a);
            }
            Za();
            La();
        } else if (valueOf != null && valueOf.intValue() == R.id.cancelButton) {
            r Ra2 = Ra();
            if (Ra2 != null) {
                Ra2.onCancel();
            }
            La();
        }
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        ((MaterialButton) e(c.c.a.e.commitButton)).setOnClickListener(this);
        ((AppCompatButton) e(c.c.a.e.cancelButton)).setOnClickListener(this);
        a aVar = this.ua;
        if (aVar != null) {
            if (aVar.b() != null) {
                AppCompatTextView appCompatTextView = (AppCompatTextView) e(c.c.a.e.title);
                j.a((Object) appCompatTextView, "title");
                c.c.a.d.b.l.c(appCompatTextView);
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) e(c.c.a.e.title);
                j.a((Object) appCompatTextView2, "title");
                a aVar2 = this.ua;
                if (aVar2 != null) {
                    appCompatTextView2.setText(aVar2.b());
                } else {
                    j.c("args");
                    throw null;
                }
            } else {
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) e(c.c.a.e.title);
                j.a((Object) appCompatTextView3, "title");
                c.c.a.d.b.l.a(appCompatTextView3);
            }
            AppCompatTextView appCompatTextView4 = (AppCompatTextView) e(c.c.a.e.description);
            j.a((Object) appCompatTextView4, "description");
            a aVar3 = this.ua;
            if (aVar3 != null) {
                appCompatTextView4.setText(aVar3.a());
            } else {
                j.c("args");
                throw null;
            }
        } else {
            j.c("args");
            throw null;
        }
    }
}
