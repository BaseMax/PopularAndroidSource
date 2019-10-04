package c.c.a.n.b;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import c.c.a.i.b;
import c.c.a.n.b.d.f;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.appdetail.AppDetailFragment;
import h.f.b.j;

/* renamed from: c.c.a.n.b.b  reason: case insensitive filesystem */
/* compiled from: AppDetailFragment.kt */
public final class C0668b implements f {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppDetailFragment f6213a;

    public C0668b(AppDetailFragment appDetailFragment) {
        this.f6213a = appDetailFragment;
    }

    public void a(String str) {
        j.b(str, "email");
        try {
            AppDetailFragment appDetailFragment = this.f6213a;
            Intent intent = new Intent("android.intent.action.SENDTO");
            intent.setType("message/rfc822");
            intent.setData(Uri.parse("mailto:"));
            intent.putExtra("android.intent.extra.EMAIL", new String[]{str});
            appDetailFragment.a(Intent.createChooser(intent, this.f6213a.b((int) R.string.openWith)));
        } catch (ActivityNotFoundException unused) {
        }
    }

    public void b(String str) {
        j.b(str, "website");
        Context Ha = this.f6213a.Ha();
        j.a((Object) Ha, "requireContext()");
        b.a(Ha, str, false, 2, null);
    }

    public void c(String str) {
        j.b(str, "tel");
        this.f6213a.a(new Intent("android.intent.action.VIEW", Uri.parse("tel:" + str)));
    }
}
