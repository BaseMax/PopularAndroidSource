package c.c.a.n.t.b;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import c.c.a.d.b.h;
import c.c.a.d.f.l;
import c.c.a.d.f.r;
import c.c.a.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.core.widget.DialogButtonLayout;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.None;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: ChangePhoneNumberDialog.kt */
public final class b extends l<String> {
    public final String sa = "ChangePhoneNumberDialog";
    public c ta;
    public String ua;
    public HashMap va;

    public static final /* synthetic */ String a(b bVar) {
        String str = bVar.ua;
        if (str != null) {
            return str;
        }
        j.c("phoneNumber");
        throw null;
    }

    public static final /* synthetic */ c b(b bVar) {
        c cVar = bVar.ta;
        if (cVar != null) {
            return cVar;
        }
        j.c("viewModel");
        throw null;
    }

    public void Qa() {
        HashMap hashMap = this.va;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public String Sa() {
        return this.sa;
    }

    public final void Za() {
        ab();
    }

    public final void _a() {
        r Ra = Ra();
        if (Ra != null) {
            String str = this.ua;
            if (str != null) {
                Ra.a(str);
            } else {
                j.c("phoneNumber");
                throw null;
            }
        }
        La();
    }

    public final void ab() {
        AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.errorTextView);
        j.a((Object) appCompatTextView, "errorTextView");
        appCompatTextView.setVisibility(8);
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        E a2 = G.a((Fragment) this, Wa()).a(c.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        c cVar = (c) a2;
        h.a(this, cVar.e(), new ChangePhoneNumberDialog$onCreate$1$1(this));
        this.ta = cVar;
    }

    public final void d(String str) {
        AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.errorTextView);
        j.a((Object) appCompatTextView, "errorTextView");
        appCompatTextView.setVisibility(0);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) e(e.errorTextView);
        j.a((Object) appCompatTextView2, "errorTextView");
        appCompatTextView2.setText(str);
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

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.dialog_change_phone_number, viewGroup, false);
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        ((DialogButtonLayout) e(e.dialogButtonLayout)).setOnClickListener(new a(this));
    }

    public final void a(Resource<None> resource) {
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
                Za();
            } else if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
                _a();
            } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                ErrorModel c2 = resource.c();
                String message = c2 != null ? c2.getMessage() : null;
                if (message != null) {
                    c(message);
                } else {
                    j.a();
                    throw null;
                }
            }
        }
    }

    public final void c(String str) {
        d(str);
    }
}
