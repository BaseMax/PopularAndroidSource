package ir.cafebazaar.inline.ui;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import b.o.a.C0285i;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.CustomEvent;
import com.crashlytics.android.core.MetaDataStore;
import f.a.a.c.a;
import f.a.a.e;
import f.a.a.e.g;
import f.a.a.e.l;
import f.a.a.e.m;
import f.a.a.f;
import f.a.a.g.d.a.c;
import f.a.a.g.d.d;
import f.a.a.g.h.b;
import ir.cafebazaar.inline.platform.InlineApplication;
import java.util.ArrayList;
import java.util.HashMap;

public class InlineActivity extends C0285i implements g {
    public static String q = "";
    public boolean A;
    public boolean B = true;
    public a C = f.a.a.b.a.f13937a;
    public m r;
    public InlineApplication s = null;
    public d t = new d(this);
    public b u;
    public c v = new c(this);
    public boolean w = false;
    public String x;
    public boolean y = false;
    public boolean z;

    public static Intent b(String str) {
        Intent intent = new Intent("android.intent.action.RUN", Uri.parse("inline://run?pn=" + Uri.encode(str)));
        intent.putExtra("open_from_bazaar", true);
        intent.setFlags(402653184);
        return intent;
    }

    public InlineActivity f() {
        return this;
    }

    public void finish() {
        a(false);
    }

    public Theme g() {
        return h().i();
    }

    public InlineApplication h() {
        return this.s;
    }

    public f.a.a.a.b.a j() {
        return h().a();
    }

    public l k() {
        Fragment a2 = r().a(e.container);
        if (a2 == null || !(a2 instanceof l)) {
            return null;
        }
        return (l) a2;
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (f().v().a(this, i2, i3, intent)) {
            return;
        }
        if ((h().b() == null || !h().b().a(this, i2, i3, intent)) && h().j().b().a() != null) {
            h().j().b().a().a((g) this, i2, i3, intent);
        }
    }

    public void onBackPressed() {
        l k2 = k();
        if (k2 == null || !k2.La()) {
            d dVar = this.t;
            if (dVar == null || !dVar.f()) {
                super.onBackPressed();
            }
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(f.inline_activity);
        boolean z2 = false;
        this.z = getIntent().getBooleanExtra("open_from_bazaar", false);
        if (bundle != null && bundle.getBoolean("restart", false)) {
            z2 = true;
        }
        if (z2) {
            this.s = (InlineApplication) bundle.getParcelable("app");
            this.u = new b(this);
            this.t.a(bundle.getBundle("backstack"));
            this.v.a(bundle.getBundle("action"));
            Answers.getInstance().logCustom((CustomEvent) ((CustomEvent) ((CustomEvent) new CustomEvent("InlineApp").putCustomAttribute("restart", "true")).putCustomAttribute("version", Integer.toString(100709))).putCustomAttribute("packagename", this.s.f()));
            this.A = true;
            this.s.a((g) this);
            return;
        }
        this.r = new m(this);
        this.r.setOnCancelListener(new d(this));
        String queryParameter = getIntent().getData().getQueryParameter("pn");
        if (getIntent().hasExtra("ref")) {
            this.x = getIntent().getStringExtra("ref");
        } else if (getIntent().getData().getHost().equals("kamane.cafebazaar.ir")) {
            this.x = "kamane";
        }
        new f.a.a.c.a.b(queryParameter).a((f.a.a.c.e<InlineApplication>) new e(this, queryParameter));
    }

    public void onDestroy() {
        super.onDestroy();
        InlineApplication inlineApplication = this.s;
        if (!(inlineApplication == null || inlineApplication.b() == null)) {
            this.s.b().a();
        }
        this.y = true;
    }

    public void onPause() {
        super.onPause();
        this.w = false;
    }

    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        h().j().b().a().a((g) this, i2, strArr, iArr);
    }

    public void onResume() {
        super.onResume();
        this.w = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.s != null) {
            bundle.putBoolean("restart", true);
            bundle.putParcelable("app", this.s);
            Bundle bundle2 = new Bundle();
            this.t.b(bundle2);
            bundle.putBundle("backstack", bundle2);
            Bundle bundle3 = new Bundle();
            this.v.b(bundle3);
            bundle.putBundle("action", bundle3);
        }
    }

    public void onStart() {
        super.onStart();
        if (!this.B) {
            f.a.a.a.a.b a2 = f.a.a.a.a.b.a();
            f.a.a.a.a.a aVar = new f.a.a.a.a.a();
            aVar.d(this.s.j().d());
            aVar.a(MetaDataStore.USERDATA_SUFFIX);
            aVar.b("maximize");
            aVar.c("inline");
            a2.a(aVar);
        }
        this.B = false;
    }

    public void onStop() {
        super.onStop();
        if (this.s != null) {
            f.a.a.a.a.b a2 = f.a.a.a.a.b.a();
            f.a.a.a.a.a aVar = new f.a.a.a.a.a();
            aVar.d(this.s.j().d());
            aVar.a(MetaDataStore.USERDATA_SUFFIX);
            aVar.b("minimize");
            aVar.c("inline");
            a2.a(aVar);
        }
    }

    public c v() {
        return this.v;
    }

    public d w() {
        return this.t;
    }

    public b x() {
        return this.u;
    }

    public boolean y() {
        return this.w;
    }

    public final void a(InlineApplication inlineApplication) {
        String str;
        f.a.a.a.c.b.a(getApplicationContext()).a(inlineApplication.f());
        this.s = inlineApplication;
        this.u = new b(this);
        this.s.a((g) this);
        if (getIntent().getData().getQueryParameter("pt") != null) {
            str = getIntent().getData().getQueryParameter("pt");
        } else {
            str = this.t.c();
        }
        this.A = true;
        Answers.getInstance().logCustom((CustomEvent) ((CustomEvent) ((CustomEvent) ((CustomEvent) new CustomEvent("InlineApp").putCustomAttribute("restart", "false")).putCustomAttribute("version", Integer.toString(100709))).putCustomAttribute("packagename", this.s.f())).putCustomAttribute("start_path", str));
        f.a.a.a.a.b a2 = f.a.a.a.a.b.a();
        f.a.a.a.a.a aVar = new f.a.a.a.a.a();
        aVar.a(MetaDataStore.USERDATA_SUFFIX);
        aVar.d(f.a.a.a.a.b.a().b());
        aVar.a(System.currentTimeMillis());
        aVar.b("inlineapp_action");
        aVar.a("action", "run");
        aVar.a("package_name", this.s.f());
        aVar.a("version", 100709);
        aVar.a("path", str);
        a2.a(aVar);
        HashMap hashMap = new HashMap();
        if (getIntent().hasExtra("params")) {
            Bundle bundleExtra = getIntent().getBundleExtra("params");
            for (String str2 : new ArrayList(bundleExtra.keySet())) {
                hashMap.put("key", bundleExtra.get(str2));
            }
        }
        new f.a.a.c.b.b(h(), str, hashMap, this.x).a(new f(this, f(), str));
    }

    public static Intent b(String str, String str2) {
        return new Intent("android.intent.action.RUN", Uri.parse("inline://run?pn=" + Uri.encode(str) + "&" + "pt" + "=" + Uri.encode(str2)));
    }

    public void a(String str) {
        Intent intent = new Intent();
        intent.putExtra("exit_token", str);
        setResult(-1, intent);
        finish();
    }

    public void a(boolean z2) {
        if (this.A) {
            f.a.a.a.a.b a2 = f.a.a.a.a.b.a();
            f.a.a.a.a.a aVar = new f.a.a.a.a.a();
            aVar.a(MetaDataStore.USERDATA_SUFFIX);
            aVar.d(f.a.a.a.a.b.a().b());
            aVar.a(System.currentTimeMillis());
            aVar.b("inlineapp_action");
            aVar.a("action", "close");
            aVar.a("package_name", this.s.f());
            aVar.a("version", 100709);
            a2.a(aVar);
            this.A = false;
        }
        if (!z2 && this.s != null && h().h() != null && h().h().a()) {
            new f.a.a.g.i.e(this).f();
        } else if (!this.z) {
            Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage("com.farsitel.bazaar");
            if (launchIntentForPackage != null) {
                launchIntentForPackage.addFlags(67108864);
                super.finish();
                startActivity(launchIntentForPackage);
                return;
            }
            super.finish();
        } else {
            super.finish();
        }
    }
}
