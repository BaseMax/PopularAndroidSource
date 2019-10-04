package f.a.a.e.b;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageButton;
import f.a.a.e.g;
import f.a.a.g.d.a.d;

/* compiled from: SearchHeaderInflater */
class D implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f14052a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppCompatImageButton f14053b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ G f14054c;

    public D(G g2, g gVar, AppCompatImageButton appCompatImageButton) {
        this.f14054c = g2;
        this.f14052a = gVar;
        this.f14053b = appCompatImageButton;
    }

    public void onClick(View view) {
        this.f14052a.f().v().a(new d(), this.f14053b);
    }
}
