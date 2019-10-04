package f.a.a.e.b;

import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewStub;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import b.i.k.z;
import c.c.a.d.g.a;
import f.a.a.e;
import f.a.a.e.g;
import f.a.a.g.d.a.o;
import f.a.a.g.d.a.p;
import ir.cafebazaar.inline.ui.Theme;

/* compiled from: SearchInflater */
public abstract class L implements Q {

    /* renamed from: a  reason: collision with root package name */
    public String f14077a = null;

    /* renamed from: b  reason: collision with root package name */
    public p f14078b = null;

    /* renamed from: c  reason: collision with root package name */
    public o f14079c = null;

    /* renamed from: d  reason: collision with root package name */
    public boolean f14080d = false;

    /* renamed from: e  reason: collision with root package name */
    public String f14081e = "";

    public abstract int a();

    public void a(p pVar) {
        this.f14078b = pVar;
    }

    public void b(String str) {
        this.f14077a = str;
    }

    public void a(boolean z) {
        this.f14080d = z;
    }

    public void a(o oVar) {
        this.f14079c = oVar;
    }

    public View a(ViewStub viewStub, g gVar) {
        viewStub.setLayoutResource(a());
        View inflate = viewStub.inflate();
        View findViewById = inflate.findViewById(e.search_view);
        AppCompatEditText appCompatEditText = (AppCompatEditText) inflate.findViewById(e.search);
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) inflate.findViewById(e.search_button);
        AppCompatImageButton appCompatImageButton2 = (AppCompatImageButton) inflate.findViewById(e.clear_button);
        View findViewById2 = inflate.findViewById(e.divider);
        Theme g2 = gVar.g();
        ColorStateList colorStateList = new ColorStateList(new int[][]{new int[]{16842919}, new int[0]}, new int[]{a.a(g2.a(), g2.h(), 0.2f), g2.h()});
        appCompatImageButton.setSupportBackgroundTintList(colorStateList);
        appCompatImageButton2.setSupportBackgroundTintList(colorStateList);
        findViewById.setBackgroundColor(g2.d());
        findViewById2.setBackgroundColor(a.a(g2.a(), g2.j(), 0.85f));
        z.a((View) appCompatEditText, colorStateList);
        appCompatEditText.setHintTextColor(g2.e());
        appCompatEditText.setTextColor(g2.b());
        appCompatEditText.setInputType(1);
        appCompatEditText.setImeOptions(3);
        appCompatEditText.setText(this.f14081e);
        String str = this.f14077a;
        if (str != null) {
            appCompatEditText.setHint(str);
        }
        appCompatEditText.setSelectAllOnFocus(true);
        H h2 = new H(this, appCompatImageButton2, appCompatEditText, gVar, findViewById);
        appCompatEditText.addTextChangedListener(h2);
        if (this.f14080d) {
            appCompatEditText.requestFocus();
            ((InputMethodManager) gVar.f().getSystemService("input_method")).toggleSoftInput(1, 1);
        }
        if (this.f14079c != null) {
            appCompatEditText.setOnEditorActionListener(new I(this, appCompatEditText, gVar, findViewById));
        }
        appCompatImageButton.setOnClickListener(new J(this, appCompatEditText, gVar, findViewById));
        appCompatImageButton2.setOnClickListener(new K(this, appCompatEditText, gVar));
        return findViewById;
    }

    public void a(String str) {
        this.f14081e = str;
    }
}
