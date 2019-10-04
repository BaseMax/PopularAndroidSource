package f.a.a.e.b.b;

import ir.cafebazaar.inline.ui.inflaters.inputs.EditTextInflater;
import ir.cafebazaar.inline.ui.inflaters.inputs.views.FormattableEditText;

/* compiled from: EditTextInflater */
class u implements FormattableEditText.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ EditTextInflater f14206a;

    public u(EditTextInflater editTextInflater) {
        this.f14206a = editTextInflater;
    }

    public int a(String str, int i2) {
        return 0;
    }

    public String a(String str) {
        if (this.f14206a.f15034j) {
            String str2 = "";
            for (int length = str.length() - 1; length >= 0; length--) {
                str2 = str.charAt(length) + str2;
                if ((str.length() - length) % 3 == 0 && length > 0) {
                    str2 = 1644 + str2;
                }
            }
            str = str2;
        }
        if (this.f14206a.f15035k == null || this.f14206a.f15035k.length() <= 0) {
            return str;
        }
        return str + " " + this.f14206a.f15035k;
    }
}
