package com.farsitel.bazaar.ui.profile.nickname;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.fragment.app.Fragment;
import b.o.a.C0285i;
import b.r.E;
import b.r.G;
import c.c.a.c.c.a;
import c.c.a.d.b.d;
import c.c.a.d.b.f;
import c.c.a.d.b.h;
import c.c.a.n.c.a.b;
import c.c.a.n.t.a.c;
import c.c.a.n.t.a.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.SaveNickNameButtonClick;
import com.farsitel.bazaar.analytics.model.where.EditProfileScreen;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.widget.LoadingButton;
import com.farsitel.bazaar.widget.RTLImageView;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.textfield.TextInputLayout;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: EditNickNameFragment.kt */
public final class EditNickNameFragment extends b {
    public e ia;
    public c ja;
    public Snackbar ka;
    public HashMap la;

    public static final /* synthetic */ c a(EditNickNameFragment editNickNameFragment) {
        c cVar = editNickNameFragment.ja;
        if (cVar != null) {
            return cVar;
        }
        j.c("nickNameSharedViewModel");
        throw null;
    }

    public void La() {
        HashMap hashMap = this.la;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public final void Ua() {
        ((LoadingButton) e(c.c.a.e.saveButton)).setShowLoading(true);
        Snackbar snackbar = this.ka;
        if (snackbar != null) {
            snackbar.c();
        }
    }

    public final void Va() {
        ((LoadingButton) e(c.c.a.e.saveButton)).setShowLoading(false);
        Qa().a(b((int) R.string.success_change_nick_name));
        c cVar = this.ja;
        if (cVar != null) {
            cVar.g();
            b.w.b.b.a(this).i();
            return;
        }
        j.c("nickNameSharedViewModel");
        throw null;
    }

    public final void Wa() {
        b.a(this, new SaveNickNameButtonClick(c.c.a.c.d.e.a()), null, null, 6, null);
        e eVar = this.ia;
        if (eVar != null) {
            AppCompatEditText appCompatEditText = (AppCompatEditText) e(c.c.a.e.nickNameEditText);
            j.a((Object) appCompatEditText, "nickNameEditText");
            eVar.a(String.valueOf(appCompatEditText.getText()));
            return;
        }
        j.c("viewModel");
        throw null;
    }

    public View e(int i2) {
        if (this.la == null) {
            this.la = new HashMap();
        }
        View view = (View) this.la.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.la.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public void va() {
        super.va();
        View aa = aa();
        f.a(this, aa != null ? aa.getWindowToken() : null);
    }

    public EditProfileScreen Sa() {
        return new EditProfileScreen();
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        E a2 = G.a((Fragment) this, Ra()).a(e.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        e eVar = (e) a2;
        h.a(this, eVar.e(), new EditNickNameFragment$onActivityCreated$1$1(this));
        this.ia = eVar;
        C0285i Ga = Ga();
        j.a((Object) Ga, "requireActivity()");
        E a3 = G.a(Ga, Ra()).a(c.class);
        j.a((Object) a3, "ViewModelProviders.of(th…, factory)[T::class.java]");
        this.ja = (c) a3;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_edit_nick_name, viewGroup, false);
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        ((RTLImageView) e(c.c.a.e.backButton)).setOnClickListener(new a(this));
        ((LoadingButton) e(c.c.a.e.saveButton)).setOnClickListener(new b(this));
        LoadingButton loadingButton = (LoadingButton) e(c.c.a.e.saveButton);
        j.a((Object) loadingButton, "saveButton");
        loadingButton.setEnabled(false);
        LoadingButton loadingButton2 = (LoadingButton) e(c.c.a.e.saveButton);
        j.a((Object) loadingButton2, "saveButton");
        AppCompatEditText appCompatEditText = (AppCompatEditText) e(c.c.a.e.nickNameEditText);
        j.a((Object) appCompatEditText, "nickNameEditText");
        c.c.a.d.b.c.a(loadingButton2, appCompatEditText, EditNickNameFragment$onViewCreated$3.f12368a);
        f.a.a.f.f.a(E(), (View) (AppCompatEditText) e(c.c.a.e.nickNameEditText));
    }

    public final void a(Resource<None> resource) {
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
                Va();
            } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                a(resource.c());
            } else if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
                Ua();
            } else {
                a.f4699b.a((Throwable) new RuntimeException("Unknown state"));
            }
        }
    }

    public final void a(ErrorModel errorModel) {
        ((LoadingButton) e(c.c.a.e.saveButton)).setShowLoading(false);
        TextInputLayout textInputLayout = (TextInputLayout) e(c.c.a.e.nickNameInput);
        j.a((Object) textInputLayout, "nickNameInput");
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        textInputLayout.setError(d.b(Ha, errorModel));
    }
}
