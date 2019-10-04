package f.a.a.e.b;

import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewStub;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import c.c.a.d.g.a;
import f.a.a.e;
import f.a.a.e.g;
import f.a.a.f;

/* compiled from: SearchHeaderInflater */
public class G extends L {
    public int a() {
        return f.inline_search_header;
    }

    public int f() {
        return e.header;
    }

    public View a(ViewStub viewStub, g gVar) {
        View a2 = super.a(viewStub, gVar);
        AppCompatEditText appCompatEditText = (AppCompatEditText) a2.findViewById(e.search);
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) a2.findViewById(e.backbutton);
        AppCompatImageButton appCompatImageButton2 = (AppCompatImageButton) a2.findViewById(e.search_button);
        if (!gVar.f().w().d()) {
            appCompatImageButton.setOnClickListener(new D(this, gVar, appCompatImageButton));
            appCompatImageButton.setSupportBackgroundTintList(new ColorStateList(new int[][]{new int[]{16842919}, new int[0]}, new int[]{a.a(gVar.g().a(), gVar.g().h(), 0.2f), gVar.g().h()}));
            appCompatEditText.addTextChangedListener(new E(this, appCompatImageButton, appCompatImageButton2));
            appCompatEditText.setOnFocusChangeListener(new F(this, appCompatImageButton, appCompatImageButton2));
            if (appCompatEditText.getText().toString().equals("")) {
                appCompatImageButton.setVisibility(8);
                appCompatImageButton2.setVisibility(0);
            } else {
                appCompatImageButton2.setVisibility(8);
                appCompatImageButton.setVisibility(0);
            }
        } else {
            appCompatImageButton.setVisibility(8);
            appCompatImageButton2.setVisibility(0);
        }
        return a2;
    }
}
