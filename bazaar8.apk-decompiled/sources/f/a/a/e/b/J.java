package f.a.a.e.b;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;
import f.a.a.e.g;
import f.a.a.f.f;

/* compiled from: SearchInflater */
class J implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatEditText f14070a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ g f14071b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ View f14072c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ L f14073d;

    public J(L l2, AppCompatEditText appCompatEditText, g gVar, View view) {
        this.f14073d = l2;
        this.f14070a = appCompatEditText;
        this.f14071b = gVar;
        this.f14072c = view;
    }

    public void onClick(View view) {
        if (!this.f14070a.hasFocus()) {
            this.f14070a.requestFocus();
            f.a((Context) this.f14071b.f(), (View) this.f14070a);
        } else if (this.f14073d.f14079c != null) {
            this.f14073d.f14079c.a(this.f14070a.getText().toString());
            this.f14071b.f().v().a(this.f14073d.f14079c, this.f14072c);
        }
    }
}
