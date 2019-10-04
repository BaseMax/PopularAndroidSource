package f.a.a.e.a;

import android.view.View;
import f.a.a.e;
import ir.cafebazaar.inline.ui.changers.exceptions.ViewNotFoundException;

/* compiled from: FooterActionChanger */
class f implements q {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ boolean f14024a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ h f14025b;

    public f(h hVar, boolean z) {
        this.f14025b = hVar;
        this.f14024a = z;
    }

    public View a(View view) {
        View view2;
        View findViewById = view.findViewById(e.footer);
        if (findViewById != null) {
            if (this.f14024a) {
                view2 = findViewById.findViewById(e.button);
            } else {
                view2 = findViewById.findViewById(e.secondarybutton);
            }
            if (view2 != null) {
                return view2;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("footer:");
            sb.append(this.f14024a ? "primary" : "secondary");
            throw new ViewNotFoundException(sb.toString());
        }
        throw new ViewNotFoundException("footer");
    }
}
