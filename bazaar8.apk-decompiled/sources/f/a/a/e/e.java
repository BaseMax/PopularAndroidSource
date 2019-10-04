package f.a.a.e;

import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import f.a.a.c.d;
import f.a.a.g;
import ir.cafebazaar.inline.platform.InlineApplication;
import ir.cafebazaar.inline.ui.InlineActivity;

/* compiled from: InlineActivity */
class e implements f.a.a.c.e<InlineApplication> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f14299a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ InlineActivity f14300b;

    public e(InlineActivity inlineActivity, String str) {
        this.f14300b = inlineActivity;
        this.f14299a = str;
    }

    public void a() {
        this.f14300b.r.show();
    }

    public void a(InlineApplication inlineApplication) {
        if (this.f14300b.y()) {
            this.f14300b.a(inlineApplication);
        }
    }

    public void a(int i2, String str) {
        if (this.f14300b.y()) {
            this.f14300b.r.dismiss();
            if (i2 == 11) {
                Toast.makeText(this.f14300b, g.update_bazaar_to_run_inline, 0).show();
                this.f14300b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("bazaar://details?id=com.farsitel.bazaar")));
                this.f14300b.finish();
                return;
            }
            new j(this.f14300b.f(), d.b(this.f14300b.f(), i2, str), d.a(this.f14300b.f(), i2, str), str).f();
        }
    }
}
