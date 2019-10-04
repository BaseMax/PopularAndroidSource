package com.farsitel.bazaar.ui.home;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LiveData;
import b.l.g;
import b.o.a.C0285i;
import b.o.a.C0290n;
import b.r.E;
import b.r.G;
import b.w.C0313j;
import c.c.a.d.a.d;
import c.c.a.d.f.b;
import c.c.a.d.f.o;
import c.c.a.e.d.i.r;
import c.c.a.n.A.k;
import c.c.a.n.i.h;
import c.c.a.n.m.e;
import c.c.a.n.m.i;
import com.crashlytics.android.core.MetaDataStore;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.Maximize;
import com.farsitel.bazaar.analytics.model.what.Minimize;
import com.farsitel.bazaar.analytics.model.where.WholeApplication;
import com.farsitel.bazaar.core.app.Permission;
import com.farsitel.bazaar.ui.changelog.dialog.ReleaseNoteDialog;
import com.farsitel.bazaar.ui.home.location.LocationPermissionDialog;
import com.google.android.material.snackbar.Snackbar;
import h.f.b.f;
import h.f.b.j;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* compiled from: MainActivity.kt */
public final class MainActivity extends b {
    public static final a w = new a(null);
    public c.c.a.e.d.a.a A;
    public h B;
    public LiveData<C0313j> C;
    public c.c.a.n.y.a D;
    public k E;
    public Snackbar F;
    public CoordinatorLayout G;
    public d H;
    public c.c.a.b.e.b I;
    public HashMap J;
    public r x;
    public c.c.a.n.r.a.d y;
    public c.c.a.n.x.a z;

    /* compiled from: MainActivity.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public final e C() {
        return new e(this);
    }

    public final CoordinatorLayout D() {
        return this.G;
    }

    public final c.c.a.n.x.a E() {
        c.c.a.n.x.a aVar = this.z;
        if (aVar != null) {
            return aVar;
        }
        j.c("settingViewModel");
        throw null;
    }

    public final void F() {
        E a2 = G.a((C0285i) this, A()).a(c.c.a.n.y.a.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        this.D = (c.c.a.n.y.a) a2;
    }

    public final void G() {
        E a2 = G.a((C0285i) this, A()).a(k.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        this.E = (k) a2;
        k kVar = this.E;
        if (kVar != null) {
            kVar.e().a(this, new h(this));
        } else {
            j.c("upgradableBadgeViewModel");
            throw null;
        }
    }

    public View d(int i2) {
        if (this.J == null) {
            this.J = new HashMap();
        }
        View view = (View) this.J.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View findViewById = findViewById(i2);
        this.J.put(Integer.valueOf(i2), findViewById);
        return findViewById;
    }

    public final void d(Intent intent) {
        if ((intent != null ? intent.getData() : null) == null) {
            if (this.H == null) {
                this.H = new d(C());
            }
            d dVar = this.H;
            if (dVar != null) {
                boolean a2 = dVar.a(Permission.ACCESS_COARSE_LOCATION, (Activity) this);
                c.c.a.n.x.a aVar = this.z;
                if (aVar != null) {
                    boolean e2 = aVar.e();
                    c.c.a.n.x.a aVar2 = this.z;
                    if (aVar2 != null) {
                        boolean p = aVar2.p();
                        d dVar2 = this.H;
                        if (dVar2 != null) {
                            boolean b2 = dVar2.b(Permission.ACCESS_COARSE_LOCATION, this);
                            if (Build.VERSION.SDK_INT < 23) {
                                c.c.a.d.a.a.f4744b.a(this).c(true);
                            } else if (!a2 && e2 && (!p || b2)) {
                                LocationPermissionDialog locationPermissionDialog = new LocationPermissionDialog();
                                locationPermissionDialog.a(new c.c.a.n.m.f(this));
                                C0290n r = r();
                                j.a((Object) r, "supportFragmentManager");
                                locationPermissionDialog.a(r);
                            }
                            return;
                        }
                        j.a();
                        throw null;
                    }
                    j.c("settingViewModel");
                    throw null;
                }
                j.c("settingViewModel");
                throw null;
            }
            j.a();
            throw null;
        }
    }

    public void onBackPressed() {
        boolean z2;
        if (this.G == null) {
            finish();
            return;
        }
        C0290n r = r();
        j.a((Object) r, "supportFragmentManager");
        List<Fragment> c2 = r.c();
        j.a((Object) c2, "supportFragmentManager.fragments");
        for (Fragment fragment : c2) {
            j.a((Object) fragment, "parent");
            C0290n D2 = fragment.D();
            j.a((Object) D2, "parent.childFragmentManager");
            List<Fragment> c3 = D2.c();
            j.a((Object) c3, "parent.childFragmentManager.fragments");
            Iterator<T> it = c3.iterator();
            while (true) {
                if (it.hasNext()) {
                    Fragment fragment2 = (Fragment) it.next();
                    j.a((Object) fragment2, "child");
                    if (fragment2.ma()) {
                        C0313j a2 = b.w.b.b.a(fragment2);
                        c.c.a.b.e.b bVar = this.I;
                        if (j.a((Object) a2, (Object) bVar != null ? bVar.a() : null)) {
                            z2 = true;
                            if (!z2 && (fragment2 instanceof o) && ((o) fragment2).m()) {
                                return;
                            }
                        }
                    }
                    z2 = false;
                    if (!z2) {
                    }
                }
            }
        }
        c.c.a.b.e.b bVar2 = this.I;
        if (bVar2 != null) {
            bVar2.t();
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        F();
        c.c.a.n.y.a aVar = this.D;
        if (aVar == null) {
            j.c("bazaarForceUpdateViewModel");
            throw null;
        } else if (aVar.h()) {
            c.c.a.n.i.f fVar = new c.c.a.n.i.f();
            C0290n r = r();
            j.a((Object) r, "supportFragmentManager");
            fVar.a(r);
        } else {
            h hVar = this.B;
            if (hVar == null) {
                j.c("releaseNoteViewModel");
                throw null;
            } else if (hVar.j()) {
                ReleaseNoteDialog releaseNoteDialog = new ReleaseNoteDialog();
                releaseNoteDialog.a(new i(this, bundle));
                C0290n r2 = r();
                j.a((Object) r2, "supportFragmentManager");
                releaseNoteDialog.a(r2);
            } else {
                a(bundle);
            }
        }
    }

    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        c(intent);
    }

    public void onPause() {
        super.onPause();
        r rVar = this.x;
        if (rVar != null) {
            rVar.a(this);
        } else {
            j.c("networkManager");
            throw null;
        }
    }

    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        j.b(strArr, "permissions");
        j.b(iArr, "grantResults");
        super.onRequestPermissionsResult(i2, strArr, iArr);
        d dVar = this.H;
        if (dVar != null) {
            dVar.a(i2, strArr, iArr, (Activity) this);
        }
    }

    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        c.c.a.b.e.b bVar = this.I;
        if (bVar != null) {
            bVar.a(bundle);
        }
    }

    public void onResume() {
        super.onResume();
        r rVar = this.x;
        if (rVar != null) {
            rVar.b(this);
        } else {
            j.c("networkManager");
            throw null;
        }
    }

    public void onStart() {
        super.onStart();
        c.c.a.a.a.f4477c.a(new c.c.a.a.a.a(MetaDataStore.USERDATA_SUFFIX, new Maximize(), new WholeApplication()));
    }

    public void onStop() {
        c.c.a.a.a.f4477c.a(new c.c.a.a.a.a(MetaDataStore.USERDATA_SUFFIX, new Minimize(), new WholeApplication()));
        super.onStop();
    }

    public boolean y() {
        LiveData<C0313j> liveData = this.C;
        if (liveData != null) {
            C0313j a2 = liveData.a();
            if (a2 != null) {
                return a2.h();
            }
        }
        return false;
    }

    public final void c(Intent intent) {
        if (intent != null) {
            if (Build.VERSION.SDK_INT >= 22) {
                Uri referrer = getReferrer();
                j.a((Object) referrer != null ? referrer.getPath() : null, (Object) getPackageName());
                Uri referrer2 = getReferrer();
                intent.putExtra("intent_source", referrer2 != null ? referrer2.toString() : null);
            }
            c.c.a.b.e.b bVar = this.I;
            if (bVar == null) {
                c.c.a.c.c.a aVar = c.c.a.c.c.a.f4699b;
                aVar.a(new Throwable("navigationManager is null in handleIntent, intent=" + intent));
            } else if (bVar != null) {
                bVar.a(intent);
            } else {
                j.a();
                throw null;
            }
        }
    }

    public final void a(Bundle bundle) {
        g.a(this, R.layout.activity_main);
        this.G = (CoordinatorLayout) findViewById(R.id.rootView);
        c.c.a.e.d.a.a aVar = this.A;
        if (aVar != null) {
            this.I = new c.c.a.b.e.b(this, aVar, c.c.a.d.a.a.f4744b.a(this).n());
            Window window = getWindow();
            j.a((Object) window, "window");
            View decorView = window.getDecorView();
            j.a((Object) decorView, "window.decorView");
            decorView.getViewTreeObserver().addOnGlobalLayoutListener(new c.c.a.n.m.g(this, bundle));
            c.c.a.n.r.a.d dVar = this.y;
            if (dVar == null) {
                j.c("bazaarKidsViewModel");
                throw null;
            } else if (dVar.j()) {
                c.c.a.n.r.a.d dVar2 = this.y;
                if (dVar2 != null) {
                    z().a(getString(dVar2.i() ? R.string.bazaar_kids_enabled : R.string.bazaar_kids_disabled));
                    c.c.a.n.r.a.d dVar3 = this.y;
                    if (dVar3 != null) {
                        dVar3.e();
                    } else {
                        j.c("bazaarKidsViewModel");
                        throw null;
                    }
                } else {
                    j.c("bazaarKidsViewModel");
                    throw null;
                }
            }
        } else {
            j.c("accountRepository");
            throw null;
        }
    }

    public void a(String str) {
        if (str != null) {
            CoordinatorLayout coordinatorLayout = this.G;
            if (coordinatorLayout != null) {
                Snackbar a2 = Snackbar.a(coordinatorLayout, str, 0);
                a2.m();
                this.F = a2;
            }
        }
    }

    public void a(Intent intent) {
        j.b(intent, "upIntent");
        c.c.a.b.e.b bVar = this.I;
        if (bVar != null) {
            bVar.u();
        }
    }
}
