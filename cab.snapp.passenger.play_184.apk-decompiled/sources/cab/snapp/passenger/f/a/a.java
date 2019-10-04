package cab.snapp.passenger.f.a;

import android.app.Activity;
import cab.snapp.c.f;
import cab.snapp.passenger.data.models.SnappUssd;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.a.a.b;
import cab.snapp.passenger.f.b.b.c;
import java.util.HashMap;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static SnappUssd f526a;

    /* renamed from: cab.snapp.passenger.f.a.a$a  reason: collision with other inner class name */
    public interface C0019a {
        void onPaymentError(String str, int i);

        void onPaymentStart();

        void onPaymentSucceed(long j);
    }

    public static b buildSnappPayment(Activity activity, int i, final C0019a aVar, d dVar, final c cVar) {
        if (!f.isUserConnectedToNetwork(activity)) {
            aVar.onPaymentError("", 1101);
            return null;
        }
        b bVar = new b(activity, dVar);
        switch (i) {
            case 1001:
                bVar = new b(activity, dVar);
                break;
            case 1002:
                bVar = new cab.snapp.passenger.f.a.a.d(activity, f526a);
                break;
            case 1003:
                bVar = new cab.snapp.passenger.f.a.a.c(activity, dVar);
                break;
            case 1004:
                bVar = new cab.snapp.passenger.f.a.a.a(activity, dVar);
                break;
        }
        bVar.setInteractionInterface(new C0019a() {
            public final void onPaymentStart() {
                C0019a aVar = aVar;
                if (aVar != null) {
                    aVar.onPaymentStart();
                }
            }

            public final void onPaymentSucceed(long j) {
                C0019a aVar = aVar;
                if (aVar != null) {
                    aVar.onPaymentSucceed(j);
                }
                c cVar = cVar;
                HashMap hashMap = new HashMap();
                hashMap.put("amount", Long.valueOf(j));
                cVar.reportEvent(c.e.ADDED_CREDIT, hashMap);
            }

            public final void onPaymentError(String str, int i) {
                C0019a aVar = aVar;
                if (aVar != null) {
                    aVar.onPaymentError(str, i);
                }
            }
        });
        return bVar;
    }

    public static SnappUssd getSnappUssd() {
        return f526a;
    }

    public static void setSnappUssd(SnappUssd snappUssd) {
        f526a = snappUssd;
    }

    public static boolean isUssdEnable() {
        SnappUssd snappUssd = f526a;
        return snappUssd != null && snappUssd.isEnabled();
    }
}
