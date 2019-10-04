package c.e.a.b.d.d;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import c.e.a.b.d.d.C0789l;

/* renamed from: c.e.a.b.d.d.a  reason: case insensitive filesystem */
public class C0778a extends C0789l.a {
    public static Account a(C0789l lVar) {
        if (lVar != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return lVar.e();
            } catch (RemoteException unused) {
                Log.w("AccountAccessor", "Remote account accessor probably died");
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return null;
    }
}
