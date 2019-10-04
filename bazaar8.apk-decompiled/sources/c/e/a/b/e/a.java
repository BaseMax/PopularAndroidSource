package c.e.a.b.e;

import android.os.IBinder;
import android.os.IInterface;
import c.e.a.b.g.d.b;

public interface a extends IInterface {

    /* renamed from: c.e.a.b.e.a$a  reason: collision with other inner class name */
    public static abstract class C0127a extends b implements a {

        /* renamed from: c.e.a.b.e.a$a$a  reason: collision with other inner class name */
        public static class C0128a extends c.e.a.b.g.d.a implements a {
            public C0128a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.dynamic.IObjectWrapper");
            }
        }

        public C0127a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            if (queryLocalInterface instanceof a) {
                return (a) queryLocalInterface;
            }
            return new C0128a(iBinder);
        }
    }
}
