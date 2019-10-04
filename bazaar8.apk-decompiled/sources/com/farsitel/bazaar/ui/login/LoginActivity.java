package com.farsitel.bazaar.ui.login;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.animation.AnimationUtils;
import androidx.fragment.app.Fragment;
import b.o.a.C0285i;
import c.c.a.d.f.b;
import c.c.a.e;
import c.c.a.n.p.C0674a;
import com.crashlytics.android.answers.SessionEvent;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.login.LoginType;
import h.f.b.f;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: LoginActivity.kt */
public final class LoginActivity extends b implements C0674a {
    public static final a w = new a(null);
    public HashMap x;

    /* compiled from: LoginActivity.kt */
    public static final class a {
        public a() {
        }

        public static /* synthetic */ void a(a aVar, Fragment fragment, int i2, String str, LoginType loginType, int i3, Object obj) {
            if ((i3 & 4) != 0) {
                str = "";
            }
            if ((i3 & 8) != 0) {
                loginType = LoginType.DEFAULT;
            }
            aVar.a(fragment, i2, str, loginType);
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public final void a(Fragment fragment, int i2, String str, LoginType loginType) {
            j.b(fragment, "fragment");
            j.b(str, "dealerPackageName");
            j.b(loginType, "loginType");
            Intent intent = new Intent(fragment.Ga(), LoginActivity.class);
            intent.putExtra("dealerPackageName", str);
            intent.putExtra("loginType", loginType.ordinal());
            fragment.startActivityForResult(intent, i2);
        }

        public final void a(C0285i iVar, int i2, String str, LoginType loginType) {
            j.b(iVar, SessionEvent.ACTIVITY_KEY);
            j.b(str, "dealerPackageName");
            j.b(loginType, "loginType");
            Intent intent = new Intent(iVar, LoginActivity.class);
            intent.putExtra("dealerPackageName", str);
            intent.putExtra("loginType", loginType.ordinal());
            iVar.startActivityForResult(intent, i2);
        }
    }

    public final void C() {
        d(e.loginBackground).startAnimation(AnimationUtils.loadAnimation(getApplicationContext(), 17432576));
    }

    public View d(int i2) {
        if (this.x == null) {
            this.x = new HashMap();
        }
        View view = (View) this.x.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View findViewById = findViewById(i2);
        this.x.put(Integer.valueOf(i2), findViewById);
        return findViewById;
    }

    public final void e(int i2) {
        setResult(i2);
        finish();
    }

    public void finish() {
        super.finish();
        overridePendingTransition(0, 17432577);
    }

    public void l() {
        e(0);
    }

    public void m() {
        e(-1);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_login);
        C();
    }

    public void onStart() {
        super.onStart();
        overridePendingTransition(0, 0);
    }
}
