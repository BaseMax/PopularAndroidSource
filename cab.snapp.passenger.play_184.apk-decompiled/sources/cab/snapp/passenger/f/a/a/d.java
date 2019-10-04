package cab.snapp.passenger.f.a.a;

import android.app.Activity;
import android.net.Uri;
import cab.snapp.c.h;
import cab.snapp.passenger.data.models.SnappUssd;
import cab.snapp.passenger.f.a.a;
import cab.snapp.passenger.f.a.b;
import org.eclipse.paho.a.a.w;

public final class d implements b {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f535a;

    /* renamed from: b  reason: collision with root package name */
    private final SnappUssd f536b;
    private a.C0019a c;
    private int d;

    public final void openIPG(String str) {
    }

    public d(Activity activity, SnappUssd snappUssd) {
        this.f535a = activity;
        this.f536b = snappUssd;
    }

    public final void performPayCall(String str) {
        a.C0019a aVar = this.c;
        if (aVar != null) {
            aVar.onPaymentStart();
        }
        this.d = Integer.parseInt(str);
        String pattern = this.f536b.getPattern();
        if (pattern != null && !pattern.isEmpty() && pattern.contains("[-AMT-]")) {
            String replace = pattern.replace("[-AMT-]", String.valueOf(cab.snapp.c.d.convertPersianToEnglishNumbers(this.d)));
            a.C0019a aVar2 = this.c;
            if (aVar2 != null) {
                aVar2.onPaymentSucceed((long) this.d);
            }
            h.callNumber(this.f535a, replace.replaceAll(w.MULTI_LEVEL_WILDCARD, Uri.encode(w.MULTI_LEVEL_WILDCARD)));
        }
    }

    public final void setInteractionInterface(a.C0019a aVar) {
        this.c = aVar;
    }
}
