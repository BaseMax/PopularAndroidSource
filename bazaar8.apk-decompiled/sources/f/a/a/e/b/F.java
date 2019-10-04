package f.a.a.e.b;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageButton;

/* compiled from: SearchHeaderInflater */
class F implements View.OnFocusChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatImageButton f14058a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppCompatImageButton f14059b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ G f14060c;

    public F(G g2, AppCompatImageButton appCompatImageButton, AppCompatImageButton appCompatImageButton2) {
        this.f14060c = g2;
        this.f14058a = appCompatImageButton;
        this.f14059b = appCompatImageButton2;
    }

    public void onFocusChange(View view, boolean z) {
        if (z) {
            this.f14058a.setVisibility(8);
            this.f14059b.setVisibility(0);
        }
    }
}
