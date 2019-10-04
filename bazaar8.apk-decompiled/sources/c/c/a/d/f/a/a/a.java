package c.c.a.d.f.a.a;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import c.c.a.d.d;
import c.c.a.d.e;
import c.c.a.d.f.l;
import c.c.a.d.f.r;
import com.farsitel.bazaar.core.widget.DialogButtonLayout;
import com.farsitel.bazaar.data.entity.None;
import h.f.b.f;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: AlertDialog.kt */
public final class a extends l<None> {
    public static final C0076a sa = new C0076a(null);
    public final String ta = "AlertDialog";
    public int ua;
    public HashMap va;

    /* renamed from: c.c.a.d.f.a.a.a$a  reason: collision with other inner class name */
    /* compiled from: AlertDialog.kt */
    public static final class C0076a {
        public C0076a() {
        }

        public static /* synthetic */ a a(C0076a aVar, int i2, String str, String str2, String str3, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i2 = 0;
            }
            if ((i3 & 4) != 0) {
                str2 = null;
            }
            if ((i3 & 8) != 0) {
                str3 = null;
            }
            return aVar.a(i2, str, str2, str3);
        }

        public /* synthetic */ C0076a(f fVar) {
            this();
        }

        public final a a(int i2, String str, String str2, String str3) {
            j.b(str, "message");
            a aVar = new a();
            Bundle bundle = new Bundle();
            bundle.putInt("title", i2);
            bundle.putString("message", str);
            bundle.putString("commitText", str2);
            bundle.putString("cancelText", str3);
            aVar.m(bundle);
            return aVar;
        }
    }

    public void Qa() {
        HashMap hashMap = this.va;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public String Sa() {
        return this.ta;
    }

    public int Ta() {
        return this.ua;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(e.dialog_alert, viewGroup, false);
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

    public void onDismiss(DialogInterface dialogInterface) {
        j.b(dialogInterface, "dialog");
        super.onDismiss(dialogInterface);
        r Ra = Ra();
        if (Ra != null) {
            Ra.onCancel();
        }
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        Bundle C = C();
        String str = null;
        Integer valueOf = C != null ? Integer.valueOf(C.getInt("title")) : null;
        if (valueOf == null || !c.c.a.c.b.e.a(valueOf.intValue())) {
            AppCompatImageView appCompatImageView = (AppCompatImageView) e(d.iconImageView);
            j.a((Object) appCompatImageView, "iconImageView");
            c.c.a.d.b.l.a(appCompatImageView);
        } else {
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) e(d.iconImageView);
            c.c.a.d.b.l.c(appCompatImageView2);
            appCompatImageView2.setImageResource(valueOf.intValue());
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) e(d.description);
        j.a((Object) appCompatTextView, "description");
        Bundle C2 = C();
        if (C2 != null) {
            str = C2.getString("message");
        }
        appCompatTextView.setText(str);
        Bundle C3 = C();
        if (C3 != null) {
            String string = C3.getString("commitText");
            if (string != null) {
                ((DialogButtonLayout) e(d.dialogButtonLayout)).setCommitText(string);
            }
        }
        Bundle C4 = C();
        if (C4 != null) {
            String string2 = C4.getString("cancelText");
            if (string2 != null) {
                ((DialogButtonLayout) e(d.dialogButtonLayout)).setCancelText(string2);
            }
        }
        ((DialogButtonLayout) e(d.dialogButtonLayout)).setOnClickListener(new b(this));
    }
}
