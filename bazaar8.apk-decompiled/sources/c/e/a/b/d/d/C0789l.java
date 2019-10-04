package c.e.a.b.d.d;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import c.e.a.b.g.d.b;
import c.e.a.b.g.d.c;

/* renamed from: c.e.a.b.d.d.l  reason: case insensitive filesystem */
public interface C0789l extends IInterface {

    /* renamed from: c.e.a.b.d.d.l$a */
    public static abstract class a extends b implements C0789l {

        /* renamed from: c.e.a.b.d.d.l$a$a  reason: collision with other inner class name */
        public static class C0126a extends c.e.a.b.g.d.a implements C0789l {
            public C0126a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
            }

            public final Account e() {
                Parcel a2 = a(2, A());
                Account account = (Account) c.a(a2, Account.CREATOR);
                a2.recycle();
                return account;
            }
        }

        public static C0789l a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            if (queryLocalInterface instanceof C0789l) {
                return (C0789l) queryLocalInterface;
            }
            return new C0126a(iBinder);
        }
    }

    Account e();
}
