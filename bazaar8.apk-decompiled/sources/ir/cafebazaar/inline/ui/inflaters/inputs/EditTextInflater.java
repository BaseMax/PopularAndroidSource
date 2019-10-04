package ir.cafebazaar.inline.ui.inflaters.inputs;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.View;
import b.i.b.a;
import b.i.k.z;
import f.a.a.b;
import f.a.a.d;
import f.a.a.d.g;
import f.a.a.e.b.b.B;
import f.a.a.f;
import ir.cafebazaar.inline.ui.Theme;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;
import ir.cafebazaar.inline.ui.inflaters.inputs.views.FormattableEditText;
import java.util.ArrayList;
import java.util.List;

public class EditTextInflater extends ControllableInputInflater {

    /* renamed from: g  reason: collision with root package name */
    public List<g> f15031g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    public KeyboardType f15032h = KeyboardType.normal;

    /* renamed from: i  reason: collision with root package name */
    public String f15033i = null;

    /* renamed from: j  reason: collision with root package name */
    public boolean f15034j = false;

    /* renamed from: k  reason: collision with root package name */
    public String f15035k = null;

    public enum KeyboardType {
        normal(1),
        multiline(131073),
        number(2),
        signedNumber(4098),
        decimal(8194),
        signedDecimal(12290),
        phone(3, d.ic_phone),
        caps(4097),
        email(33, d.ic_email),
        uri(17, d.ic_link);
        
        public int drawable;
        public int type;

        /* access modifiers changed from: public */
        KeyboardType(int i2, int i3) {
            this.type = i2;
            this.drawable = i3;
        }

        public int f() {
            return this.drawable;
        }

        public int g() {
            return this.type;
        }

        public boolean h() {
            return this == number || this == signedNumber || this == decimal || this == signedDecimal;
        }

        /* access modifiers changed from: public */
        KeyboardType(int i2) {
            this(r2, r3, i2, -1);
        }
    }

    public void e(String str) {
        this.f15035k = str;
    }

    public int f() {
        return f.inline_edittext;
    }

    public void a(List<g> list) {
        this.f15031g = list;
    }

    public void b(boolean z) {
        this.f15034j = true;
    }

    public void a(KeyboardType keyboardType) {
        this.f15032h = keyboardType;
    }

    public void a(Object obj) {
        if (obj instanceof String) {
            this.f15033i = (String) obj;
        }
    }

    public B.a a(View view, f.a.a.e.g gVar, ControllableInputInflater.InputController inputController) {
        FormattableEditText formattableEditText = (FormattableEditText) view;
        Theme g2 = gVar.g();
        ColorStateList colorStateList = new ColorStateList(new int[][]{new int[0]}, new int[]{g2.h()});
        formattableEditText.setTextColor(g2.j());
        formattableEditText.setInputType(this.f15032h.g());
        z.a((View) formattableEditText, colorStateList);
        ColorStateList colorStateList2 = new ColorStateList(new int[][]{new int[]{16842908}, new int[0]}, new int[]{g2.h(), gVar.k().E().getResources().getColor(b.red_notif)});
        if (this.f15032h.f() != -1) {
            Drawable c2 = a.c(gVar.k().E(), this.f15032h.f());
            b.i.c.a.a.b(c2, g2.h());
            c2.mutate().setBounds(0, 0, 12, 12);
            formattableEditText.setCompoundDrawablesWithIntrinsicBounds(c2, null, null, null);
        }
        ControllableInputInflater.InputController inputController2 = inputController;
        s sVar = new s(this, formattableEditText, gVar, inputController2, colorStateList2, colorStateList);
        t tVar = new t(this, gVar, formattableEditText, inputController2, sVar);
        formattableEditText.setOnFocusChangeListener(tVar);
        formattableEditText.setImeOptions(6);
        if (this.f15032h.h() && (this.f15034j || this.f15035k != null)) {
            formattableEditText.setFormatter(new u(this));
        }
        String str = this.f15033i;
        if (str != null) {
            formattableEditText.setText(str);
            if (!formattableEditText.getText().toString().isEmpty()) {
                inputController.a(ControllableInputInflater.InputController.Placeholder.UP, false);
                formattableEditText.setSelectAllOnFocus(true);
                formattableEditText.addTextChangedListener(new v(this, formattableEditText));
            }
        }
        return sVar;
    }
}
