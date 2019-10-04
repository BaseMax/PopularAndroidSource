package com.farsitel.bazaar.ui.login;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import b.o.a.C0285i;
import c.c.a.i.c;
import c.c.a.n.c.a.b;
import c.c.a.n.p.o;
import com.farsitel.bazaar.analytics.model.what.StartFlowEvent;
import com.farsitel.bazaar.analytics.model.where.LoginFlow;
import com.farsitel.bazaar.common.model.login.LoginType;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: StartLoginFragment.kt */
public final class StartLoginFragment extends b {
    public final boolean ia = true;
    public HashMap ja;

    public void La() {
        HashMap hashMap = this.ja;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public boolean Ta() {
        return this.ia;
    }

    public final String Ua() {
        C0285i Ga = Ga();
        j.a((Object) Ga, "requireActivity()");
        Intent intent = Ga.getIntent();
        if (intent != null) {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                String string = extras.getString("dealerPackageName");
                if (string != null) {
                    return string;
                }
            }
        }
        return "";
    }

    public final int Va() {
        C0285i Ga = Ga();
        j.a((Object) Ga, "requireActivity()");
        Intent intent = Ga.getIntent();
        if (intent != null) {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                return extras.getInt("loginType", LoginType.DEFAULT.ordinal());
            }
        }
        return LoginType.DEFAULT.ordinal();
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        b.a(this, new StartFlowEvent(), null, null, 6, null);
        c.a(b.w.b.b.a(this), o.f6750a.a(Ua(), LoginType.values()[Va()].ordinal()));
    }

    public View e(int i2) {
        if (this.ja == null) {
            this.ja = new HashMap();
        }
        View view = (View) this.ja.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.ja.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public LoginFlow Sa() {
        return new LoginFlow(Ua(), Va());
    }
}
