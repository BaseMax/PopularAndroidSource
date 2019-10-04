package c.c.a.n.r.a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import c.c.a.c.c.a;
import c.c.a.d.b.h;
import c.c.a.d.f.l;
import c.c.a.d.f.r;
import c.c.a.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.InvalidPassWordException;
import com.farsitel.bazaar.data.entity.RetryMoreThanTreeTimesException;
import com.farsitel.bazaar.widget.persianpicker.PersianCalendar;
import com.farsitel.bazaar.widget.persianpicker.PersianDatePicker;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: BazaarKidsDialog.kt */
public final class c extends l<Boolean> {
    public int sa;
    public final String ta = "BazaarKidsDialog";
    public d ua;
    public final r<Boolean> va;
    public HashMap wa;

    public c(r<Boolean> rVar) {
        j.b(rVar, "callback");
        this.va = rVar;
        a(this.va);
    }

    public static final /* synthetic */ d b(c cVar) {
        d dVar = cVar.ua;
        if (dVar != null) {
            return dVar;
        }
        j.c("viewModel");
        throw null;
    }

    public void Qa() {
        HashMap hashMap = this.wa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public String Sa() {
        return this.ta;
    }

    public int Ta() {
        return this.sa;
    }

    public final String Za() {
        PersianDatePicker persianDatePicker = (PersianDatePicker) e(e.datePicker);
        j.a((Object) persianDatePicker, "datePicker");
        PersianCalendar displayPersianDate = persianDatePicker.getDisplayPersianDate();
        j.a((Object) displayPersianDate, "datePicker.displayPersianDate");
        String i2 = displayPersianDate.i();
        j.a((Object) i2, "datePicker.displayPersianDate.persianShortDate");
        return i2;
    }

    public View e(int i2) {
        if (this.wa == null) {
            this.wa = new HashMap();
        }
        View view = (View) this.wa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.wa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public final void f(int i2) {
        AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.errorMessage);
        c.c.a.d.b.l.c(appCompatTextView);
        appCompatTextView.setText(i2);
        appCompatTextView.startAnimation(AnimationUtils.loadAnimation(Ha(), R.anim.wrong_field));
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.dialog_bazaar_kids, viewGroup, false);
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        E a2 = G.a((Fragment) this, Wa()).a(d.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        d dVar = (d) a2;
        h.a(this, dVar.f(), new BazaarKidsDialog$onViewCreated$1$1(this));
        dVar.h().a(ba(), new b(this));
        dVar.g();
        this.ua = dVar;
    }

    public final void a(Resource<Boolean> resource) {
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
                Boolean a2 = resource.a();
                if (a2 != null) {
                    boolean booleanValue = a2.booleanValue();
                    r Ra = Ra();
                    if (Ra != null) {
                        Ra.a(Boolean.valueOf(booleanValue));
                    }
                }
                La();
            } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                if (resource.c() instanceof InvalidPassWordException) {
                    f(R.string.bazaar_kids_dialog_invalid_date);
                }
                if (resource.c() instanceof RetryMoreThanTreeTimesException) {
                    AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.callToSupportMessage);
                    j.a((Object) appCompatTextView, "callToSupportMessage");
                    c.c.a.d.b.l.c(appCompatTextView);
                }
            } else {
                a aVar = a.f4699b;
                aVar.a((Throwable) new IllegalStateException("Invalid State: " + resource.d()));
            }
        }
    }
}
