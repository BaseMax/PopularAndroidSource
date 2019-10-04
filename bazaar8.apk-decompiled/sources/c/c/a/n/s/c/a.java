package c.c.a.n.s.c;

import android.content.Context;
import android.text.style.ClickableSpan;
import android.view.View;
import c.c.a.i.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.payment.giftcard.GiftCardFragment;
import h.f.b.j;

/* compiled from: GiftCardFragment.kt */
public final class a extends ClickableSpan {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ GiftCardFragment f6860a;

    public a(GiftCardFragment giftCardFragment) {
        this.f6860a = giftCardFragment;
    }

    public void onClick(View view) {
        j.b(view, "widget");
        Context Ha = this.f6860a.Ha();
        j.a((Object) Ha, "requireContext()");
        String b2 = this.f6860a.b((int) R.string.gift_card_terms_link);
        j.a((Object) b2, "getString(R.string.gift_card_terms_link)");
        b.a(Ha, b2, false, 2, null);
    }
}
