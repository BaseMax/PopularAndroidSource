package c.c.a.b.h.a.a;

import android.os.Binder;
import c.c.a.c;
import com.farsitel.bazaar.app.thirdparty.account.update.UpdateCheckService;
import h.f.b.j;
import i.a.C1101f;

/* compiled from: UpdateCheckService.kt */
public final class a extends c.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ UpdateCheckService f4690a;

    public a(UpdateCheckService updateCheckService) {
        this.f4690a = updateCheckService;
    }

    public final boolean a(String str) {
        try {
            if (Binder.getCallingUid() == this.f4690a.getPackageManager().getApplicationInfo(str, 128).uid) {
                return true;
            }
            return false;
        } catch (Exception e2) {
            c.c.a.c.c.a.f4699b.a((Throwable) e2);
            return false;
        }
    }

    public long b(String str) {
        j.b(str, "packageName");
        Long l2 = (Long) C1101f.a(null, new UpdateCheckService$onBind$1$getVersionCode$versionCode$1(this, str, null), 1, null);
        if (l2 == null || !a(str)) {
            return -1;
        }
        return l2.longValue();
    }
}
