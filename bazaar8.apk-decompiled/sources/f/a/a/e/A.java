package f.a.a.e;

import android.text.Editable;
import android.text.TextWatcher;
import androidx.appcompat.widget.AppCompatImageView;
import f.a.a.d;
import f.a.a.f.a;
import ir.cafebazaar.inline.ui.SingleLineEditText;

/* compiled from: VideoPageFragment */
class A implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SingleLineEditText f14006a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppCompatImageView f14007b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f14008c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C f14009d;

    public A(C c2, SingleLineEditText singleLineEditText, AppCompatImageView appCompatImageView, int i2) {
        this.f14009d = c2;
        this.f14006a = singleLineEditText;
        this.f14007b = appCompatImageView;
        this.f14008c = i2;
    }

    public void afterTextChanged(Editable editable) {
    }

    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        if (charSequence.length() > 0) {
            if (charSequence.toString().contains("\n")) {
                this.f14006a.setText(charSequence.toString().replaceAll("\n", " ").trim());
                SingleLineEditText singleLineEditText = this.f14006a;
                singleLineEditText.setSelection(singleLineEditText.getText().toString().length());
            }
            this.f14007b.setImageResource(d.inline_ic_send_activate);
            this.f14007b.setColorFilter(null);
            a.a(this.f14006a, b.i.b.a.c(this.f14009d.x(), d.inline_bg_submit_comment_activate));
            return;
        }
        this.f14007b.setImageResource(d.inline_ic_send_normal);
        b.i.c.a.a.b(this.f14007b.getDrawable(), this.f14008c);
        a.a(this.f14006a, b.i.b.a.c(this.f14009d.x(), d.inline_bg_submit_comment_normal));
    }
}
