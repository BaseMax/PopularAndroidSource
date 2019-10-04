package f.a.a.e.b.b;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import androidx.appcompat.widget.AppCompatTextView;
import f.a.a.e.b.b.A;
import f.a.a.e.g;
import f.a.a.g.a.a;
import ir.cafebazaar.inline.ui.inflaters.inputs.AddressInputInflater;

/* renamed from: f.a.a.e.b.b.b  reason: case insensitive filesystem */
/* compiled from: AddressInputInflater */
class C1056b implements A.a<a> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatTextView f14134a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ g f14135b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AppCompatTextView f14136c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AddressInputInflater f14137d;

    public C1056b(AddressInputInflater addressInputInflater, AppCompatTextView appCompatTextView, g gVar, AppCompatTextView appCompatTextView2) {
        this.f14137d = addressInputInflater;
        this.f14134a = appCompatTextView;
        this.f14135b = gVar;
        this.f14136c = appCompatTextView2;
    }

    public void onDismiss() {
    }

    public void a(a aVar) {
        if (aVar != null) {
            a unused = this.f14137d.f15023g = aVar;
            if (!TextUtils.isEmpty(this.f14137d.f15023g.e()) || !TextUtils.isEmpty(this.f14137d.f15023g.d())) {
                this.f14134a.setVisibility(0);
                this.f14134a.setText(this.f14137d.f15023g.e());
                this.f14136c.setText(this.f14137d.f15023g.b());
                return;
            }
            this.f14134a.setVisibility(8);
            String str = this.f14137d.d() + " " + this.f14135b.f().getResources().getString(f.a.a.g.selected);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
            spannableStringBuilder.setSpan(new StyleSpan(1), 0, str.length(), 18);
            this.f14136c.setText(spannableStringBuilder);
        }
    }
}
