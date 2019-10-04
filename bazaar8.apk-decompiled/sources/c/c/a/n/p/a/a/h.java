package c.c.a.n.p.a.a;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import c.c.a.c.g.b;
import c.c.a.d.f.l;
import c.c.a.d.f.r;
import c.c.a.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.core.widget.DialogButtonLayout;
import com.farsitel.bazaar.data.entity.None;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: MergeAccountSuccessDialog.kt */
public final class h extends l<None> {
    public int sa;
    public final String ta = "BazaarKidsDialog";
    public final long ua;
    public final r<None> va;
    public HashMap wa;

    public h(long j2, r<None> rVar) {
        j.b(rVar, "callback");
        this.ua = j2;
        this.va = rVar;
        a(this.va);
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

    public final r<None> Za() {
        return this.va;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.dialog_merge_account_success, viewGroup, false);
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

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.creditTextView);
        j.a((Object) appCompatTextView, "creditTextView");
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        appCompatTextView.setText(a((int) R.string.your_credit_in_bazaar, b.a(Ha, Long.valueOf(this.ua), false)));
        ((DialogButtonLayout) e(e.dialogButtonLayout)).setOnClickListener(new g(this));
    }
}
