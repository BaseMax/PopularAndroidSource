package f.a.a.g.a;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import b.b.a.C0201l;
import f.a.a.e;
import f.a.a.e.g;
import f.a.a.f;
import f.a.a.g.c;
import f.a.a.h;

/* compiled from: AddressRemoveDialog */
public class t extends c {

    /* renamed from: c  reason: collision with root package name */
    public a f14377c;

    /* renamed from: d  reason: collision with root package name */
    public a f14378d;

    /* compiled from: AddressRemoveDialog */
    public interface a {
        void a();
    }

    public t(g gVar, a aVar, a aVar2) {
        super(gVar);
        this.f14377c = aVar2;
        this.f14378d = aVar;
    }

    public C0201l a() {
        C0201l.a aVar = new C0201l.a(c().f(), h.DialogInline);
        View inflate = LayoutInflater.from(c().f()).inflate(f.inline_address_remove_dialog, null);
        ((TextView) inflate.findViewById(e.title)).setText(this.f14378d.e());
        ((TextView) inflate.findViewById(e.raw_address)).setText(this.f14378d.b());
        ((Button) inflate.findViewById(e.delete)).setOnClickListener(new r(this));
        ((Button) inflate.findViewById(e.cancel)).setOnClickListener(new s(this));
        aVar.b(inflate);
        return aVar.a();
    }
}
