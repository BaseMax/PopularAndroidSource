package f.a.a.g.g;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import b.b.a.C0201l;
import f.a.a.d;
import f.a.a.e.g;
import f.a.a.f;
import f.a.a.f.e;
import f.a.a.g.c;
import java.util.List;

/* compiled from: RequestPermissionsDialog */
public class h extends c {

    /* renamed from: c  reason: collision with root package name */
    public List<e> f14491c;

    public h(g gVar, List<e> list) {
        super(gVar);
        this.f14491c = list;
    }

    public C0201l a() {
        C0201l.a aVar = new C0201l.a(c().f(), f.a.a.h.DialogInline);
        LayoutInflater layoutInflater = c().f().getLayoutInflater();
        View inflate = layoutInflater.inflate(f.inline_permission_dialog, null);
        e.a().a(c().h().c(), (ImageView) inflate.findViewById(f.a.a.e.icon), d.ic_inline);
        ((TextView) inflate.findViewById(f.a.a.e.text)).setText(c().f().getString(f.a.a.g.inline_app_request_permission, new Object[]{c().h().e()}));
        inflate.findViewById(f.a.a.e.allow_button).setOnClickListener(new f(this));
        inflate.findViewById(f.a.a.e.deny_button).setOnClickListener(new g(this));
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(f.a.a.e.list);
        for (e next : this.f14491c) {
            View inflate2 = layoutInflater.inflate(f.inline_permission_dialog_item, null);
            ((TextView) inflate2.findViewById(f.a.a.e.title)).setText(next.b().h());
            ((ImageView) inflate2.findViewById(f.a.a.e.icon)).setImageResource(next.b().g());
            ((TextView) inflate2.findViewById(f.a.a.e.description)).setText(next.a());
            linearLayout.addView(inflate2);
        }
        aVar.b(inflate);
        return aVar.a();
    }
}
