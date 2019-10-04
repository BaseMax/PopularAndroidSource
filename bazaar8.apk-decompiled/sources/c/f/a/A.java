package c.f.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.List;

/* compiled from: Picasso */
class A extends Handler {
    public A(Looper looper) {
        super(looper);
    }

    public void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 != 3) {
            int i3 = 0;
            if (i2 == 8) {
                List list = (List) message.obj;
                int size = list.size();
                while (i3 < size) {
                    C1038i iVar = (C1038i) list.get(i3);
                    iVar.f11986f.a(iVar);
                    i3++;
                }
            } else if (i2 == 13) {
                List list2 = (List) message.obj;
                int size2 = list2.size();
                while (i3 < size2) {
                    C1030a aVar = (C1030a) list2.get(i3);
                    aVar.f11959a.b(aVar);
                    i3++;
                }
            } else {
                throw new AssertionError("Unknown handler message received: " + message.what);
            }
        } else {
            C1030a aVar2 = (C1030a) message.obj;
            if (aVar2.e().p) {
                P.a("Main", "canceled", aVar2.f11960b.d(), "target got garbage collected");
            }
            aVar2.f11959a.a(aVar2.i());
        }
    }
}
