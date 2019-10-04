package com.farsitel.bazaar.analytics.model.what;

import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ButtonClick.kt */
public final class BazaarKidsDialogButtonClick extends ButtonClick {
    public final boolean bazaarKidsEnabled;
    public final DialogButtonClickType whichBtn;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BazaarKidsDialogButtonClick(DialogButtonClickType dialogButtonClickType, boolean z, String str) {
        super("bazaar_kids", str, null);
        j.b(dialogButtonClickType, "whichBtn");
        j.b(str, "referrer");
        this.whichBtn = dialogButtonClickType;
        this.bazaarKidsEnabled = z;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(A.b(f.a("which_button", this.whichBtn.f()), f.a("bazaar_kids_enabled", Boolean.valueOf(this.bazaarKidsEnabled))));
        return b2;
    }
}
