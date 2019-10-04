package c.c.a.d.a;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import androidx.fragment.app.Fragment;
import com.crashlytics.android.answers.SessionEvent;
import com.farsitel.bazaar.core.app.Permission;
import h.f.a.b;
import h.f.b.f;
import h.f.b.j;
import h.h;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PermissionManager.kt */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4746a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final c f4747b;

    /* compiled from: PermissionManager.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public d(c cVar) {
        this.f4747b = cVar;
    }

    public final void a(List<? extends Permission> list, Fragment fragment, int i2) {
        j.b(list, "permissions");
        j.b(fragment, "fragment");
        Context Ha = fragment.Ha();
        j.a((Object) Ha, "fragment.requireContext()");
        a(list, Ha, (b<? super List<? extends Permission>, h>) new PermissionManager$askForPermissions$1(fragment, i2), i2);
    }

    public final boolean b(Permission permission, Activity activity) {
        j.b(permission, "permission");
        j.b(activity, SessionEvent.ACTIVITY_KEY);
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(permission.f());
        }
        return false;
    }

    public final boolean a(Permission permission, Fragment fragment) {
        j.b(permission, "permission");
        j.b(fragment, "fragment");
        Context E = fragment.E();
        return E != null && E.checkCallingOrSelfPermission(permission.f()) == 0;
    }

    public final void a(List<? extends Permission> list, Activity activity, int i2) {
        j.b(list, "permissions");
        j.b(activity, SessionEvent.ACTIVITY_KEY);
        a(list, (Context) activity, (b<? super List<? extends Permission>, h>) new PermissionManager$askForPermissions$2(activity, i2), i2);
    }

    public final boolean a(Permission permission, Activity activity) {
        j.b(permission, "permission");
        j.b(activity, SessionEvent.ACTIVITY_KEY);
        return activity.checkCallingOrSelfPermission(permission.f()) == 0;
    }

    public final void a(List<? extends Permission> list, Context context, b<? super List<? extends Permission>, h> bVar, int i2) {
        List<Permission> a2 = a(context, list);
        if (a2.isEmpty()) {
            c cVar = this.f4747b;
            if (cVar != null) {
                cVar.b(i2);
                return;
            }
            return;
        }
        bVar.a(a2);
    }

    public final void a(int i2, String[] strArr, int[] iArr, Fragment fragment) {
        j.b(strArr, "permissions");
        j.b(iArr, "grantResults");
        j.b(fragment, "fragment");
        a(i2, strArr, iArr, (b<? super String, Boolean>) new PermissionManager$onRequestPermissionsResult$1(fragment));
    }

    public final void a(int i2, String[] strArr, int[] iArr, Activity activity) {
        j.b(strArr, "permissions");
        j.b(iArr, "grantResults");
        j.b(activity, SessionEvent.ACTIVITY_KEY);
        a(i2, strArr, iArr, (b<? super String, Boolean>) new PermissionManager$onRequestPermissionsResult$2(activity));
    }

    public final void a(int i2, String[] strArr, int[] iArr, b<? super String, Boolean> bVar) {
        int length = strArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            String str = strArr[i3];
            if (iArr[i3] == -1) {
                if (!bVar.a(str).booleanValue()) {
                    c cVar = this.f4747b;
                    if (cVar != null) {
                        cVar.a(i2);
                    }
                } else {
                    c cVar2 = this.f4747b;
                    if (cVar2 != null) {
                        cVar2.c(i2);
                    }
                }
                return;
            }
        }
        c cVar3 = this.f4747b;
        if (cVar3 != null) {
            cVar3.b(i2);
        }
    }

    public final List<Permission> a(Context context, List<? extends Permission> list) {
        ArrayList arrayList = new ArrayList();
        for (T next : list) {
            if (b.i.b.a.a(context, ((Permission) next).f()) != 0) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }
}
