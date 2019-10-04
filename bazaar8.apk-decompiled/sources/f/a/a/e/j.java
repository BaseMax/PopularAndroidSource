package f.a.a.e;

import android.view.View;
import android.widget.TextView;
import b.b.a.C0201l;
import f.a.a.e;
import f.a.a.f;
import f.a.a.g.c;
import f.a.a.h;

/* compiled from: InlineErrorDialog */
public class j extends c {

    /* renamed from: c  reason: collision with root package name */
    public String f14305c;

    /* renamed from: d  reason: collision with root package name */
    public String f14306d;

    /* renamed from: e  reason: collision with root package name */
    public String f14307e;

    public j(g gVar, String str, String str2, String str3) {
        super(gVar);
        this.f14305c = str;
        this.f14306d = str2;
        this.f14307e = str3;
    }

    public void e() {
        c().f().w().f();
    }

    public C0201l a() {
        C0201l.a aVar = new C0201l.a(c().f(), h.DialogInline);
        View inflate = c().f().getLayoutInflater().inflate(f.inline_error_dialog, null);
        ((TextView) inflate.findViewById(e.title)).setText(this.f14305c);
        ((TextView) inflate.findViewById(e.text)).setText(this.f14306d);
        inflate.findViewById(e.ok_button).setOnClickListener(new i(this));
        aVar.b(inflate);
        return aVar.a();
    }
}
