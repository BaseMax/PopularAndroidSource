package com.farsitel.bazaar.ui.splash;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import b.r.E;
import c.c.a.c.c.a;
import c.c.a.d.b.d;
import c.c.a.d.b.l;
import c.c.a.d.f.b;
import c.c.a.f.C0407c;
import c.c.a.n.y.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.ui.home.MainActivity;
import h.f.b.j;
import h.f.b.k;

/* compiled from: SplashActivity.kt */
public final class SplashActivity extends b {
    public e w;
    public C0407c x;
    public boolean y = true;

    public static final /* synthetic */ e a(SplashActivity splashActivity) {
        e eVar = splashActivity.w;
        if (eVar != null) {
            return eVar;
        }
        j.c("splashViewModel");
        throw null;
    }

    public final void C() {
        C0407c cVar = this.x;
        if (cVar != null) {
            ProgressBar progressBar = cVar.E;
            j.a((Object) progressBar, "binding.progressBar");
            l.c(progressBar);
            C0407c cVar2 = this.x;
            if (cVar2 != null) {
                Group group = cVar2.B;
                j.a((Object) group, "binding.errorGroup");
                l.a(group);
                return;
            }
            j.c("binding");
            throw null;
        }
        j.c("binding");
        throw null;
    }

    public final void D() {
        if (this.y) {
            F();
        }
    }

    public final void E() {
        E a2 = A().a(e.class);
        e eVar = (e) a2;
        eVar.e().a(this, new d(this));
        j.a((Object) a2, "viewModelFactory.create(…\n            })\n        }");
        this.w = eVar;
        e eVar2 = this.w;
        if (eVar2 != null) {
            eVar2.k();
        } else {
            j.c("splashViewModel");
            throw null;
        }
    }

    public final void F() {
        Intent intent = new Intent(this, MainActivity.class);
        getIntent().addFlags(32768);
        startActivity(intent);
        finish();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ViewDataBinding a2 = g.a(this, R.layout.activity_splash);
        j.a((Object) a2, "DataBindingUtil.setConte…R.layout.activity_splash)");
        this.x = (C0407c) a2;
        if (!isTaskRoot()) {
            Intent intent = getIntent();
            j.a((Object) intent, "intent");
            String action = intent.getAction();
            if (intent.hasCategory("android.intent.category.LAUNCHER") && action != null && j.a((Object) action, (Object) "android.intent.action.MAIN")) {
                finish();
                return;
            }
        }
        E();
    }

    public void onPause() {
        super.onPause();
        this.y = false;
    }

    public void onResume() {
        super.onResume();
        this.y = true;
        e eVar = this.w;
        ResourceState resourceState = null;
        if (eVar != null) {
            Resource a2 = eVar.e().a();
            if (a2 != null) {
                resourceState = a2.d();
            }
            if (j.a((Object) resourceState, (Object) ResourceState.Success.f12179a)) {
                D();
                return;
            }
            return;
        }
        j.c("splashViewModel");
        throw null;
    }

    public final void a(Resource<None> resource) {
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
                C();
            } else if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
                D();
            } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                a(resource.c());
            } else {
                a aVar = a.f4699b;
                aVar.a(new Throwable("Illegal State in handleResourceState in " + k.a(SplashActivity.class)));
            }
        }
    }

    public final void a(ErrorModel errorModel) {
        if (errorModel != null) {
            C0407c cVar = this.x;
            if (cVar != null) {
                ProgressBar progressBar = cVar.E;
                j.a((Object) progressBar, "binding.progressBar");
                l.a(progressBar);
                C0407c cVar2 = this.x;
                if (cVar2 != null) {
                    Group group = cVar2.B;
                    j.a((Object) group, "binding.errorGroup");
                    l.c(group);
                    C0407c cVar3 = this.x;
                    if (cVar3 != null) {
                        AppCompatTextView appCompatTextView = cVar3.C;
                        j.a((Object) appCompatTextView, "binding.errorText");
                        appCompatTextView.setText(d.b((Context) this, errorModel));
                        C0407c cVar4 = this.x;
                        if (cVar4 != null) {
                            cVar4.A.setOnClickListener(new c(this));
                        } else {
                            j.c("binding");
                            throw null;
                        }
                    } else {
                        j.c("binding");
                        throw null;
                    }
                } else {
                    j.c("binding");
                    throw null;
                }
            } else {
                j.c("binding");
                throw null;
            }
        }
    }
}
