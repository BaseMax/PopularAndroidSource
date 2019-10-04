package ir.cafebazaar.inline.ui.inflaters.inputs;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import b.i.k.z;
import f.a.a.b;
import f.a.a.d;
import f.a.a.e;
import f.a.a.e.b.b.B;
import f.a.a.e.g;
import f.a.a.f;
import f.a.a.g.a.a;
import f.a.a.g.a.n;
import ir.cafebazaar.inline.ui.Theme;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;

public class AddressInputInflater extends ControllableInputInflater {

    /* renamed from: g  reason: collision with root package name */
    public a f15023g;

    /* renamed from: h  reason: collision with root package name */
    public AddressType f15024h;

    public enum AddressType {
        ADDRESS("address");
        
        public String value;

        /* access modifiers changed from: public */
        AddressType(String str) {
            this.value = str;
        }

        public static AddressType a(String str) {
            for (AddressType addressType : values()) {
                if (addressType.f().equals(str)) {
                    return addressType;
                }
            }
            return null;
        }

        public String f() {
            return this.value;
        }
    }

    public int f() {
        return f.inline_addressfield;
    }

    public B.a a(View view, g gVar, ControllableInputInflater.InputController inputController) {
        View view2 = view;
        g gVar2 = gVar;
        AppCompatTextView appCompatTextView = (AppCompatTextView) view2.findViewById(e.title);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) view2.findViewById(e.raw_address);
        Theme g2 = gVar.g();
        ColorStateList colorStateList = new ColorStateList(new int[][]{new int[0]}, new int[]{g2.h()});
        appCompatTextView.setTextColor(g2.j());
        z.a((View) appCompatTextView, colorStateList);
        appCompatTextView2.setTextColor(g2.j());
        z.a((View) appCompatTextView2, colorStateList);
        ControllableInputInflater.InputController inputController2 = inputController;
        C1055a aVar = new C1055a(this, gVar, view, inputController2, new ColorStateList(new int[][]{new int[]{16842908}, new int[0]}, new int[]{g2.h(), gVar.k().S().getColor(b.red_notif)}), colorStateList);
        Drawable c2 = b.i.b.a.c(gVar.k().E(), d.ic_location);
        b.i.c.a.a.b(c2, g2.h());
        appCompatTextView2.setCompoundDrawablesWithIntrinsicBounds(c2, (Drawable) null, (Drawable) null, (Drawable) null);
        n nVar = new n(gVar2);
        nVar.a(new C1056b(this, appCompatTextView, gVar2, appCompatTextView2));
        view2.setOnClickListener(new C1057c(this, nVar, gVar2, view2));
        C1058d dVar = new C1058d(this, appCompatTextView2, appCompatTextView, inputController2, view, nVar, gVar2);
        view2.setOnFocusChangeListener(dVar);
        a aVar2 = this.f15023g;
        if (aVar2 != null) {
            appCompatTextView.setText(aVar2.e());
            appCompatTextView2.setText(this.f15023g.b());
            if (!appCompatTextView2.getText().toString().isEmpty() || !appCompatTextView.getText().toString().isEmpty()) {
                inputController.a(ControllableInputInflater.InputController.Placeholder.UP, false);
            }
        }
        return aVar;
    }

    public void a(Object obj) {
        if (obj instanceof a) {
            this.f15023g = (a) obj;
        }
    }

    public void a(AddressType addressType) {
        this.f15024h = addressType;
    }
}
