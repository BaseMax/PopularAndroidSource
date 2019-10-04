package f.a.a.e.b;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;
import f.a.a.e.g;
import f.a.a.f.f;

/* compiled from: SearchInflater */
class K implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatEditText f14074a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ g f14075b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ L f14076c;

    public K(L l2, AppCompatEditText appCompatEditText, g gVar) {
        this.f14076c = l2;
        this.f14074a = appCompatEditText;
        this.f14075b = gVar;
    }

    public void onClick(View view) {
        this.f14074a.setText("");
        this.f14074a.requestFocus();
        f.a((Context) this.f14075b.f(), (View) this.f14074a);
    }
}
