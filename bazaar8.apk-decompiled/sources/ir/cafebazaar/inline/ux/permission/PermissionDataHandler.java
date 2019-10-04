package ir.cafebazaar.inline.ux.permission;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import b.o.a.C0285i;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.farsitel.bazaar.data.entity.Location;
import f.a.a.a.c.c;
import f.a.a.c.a;
import f.a.a.g;
import f.a.a.g.d.b;
import ir.cafebazaar.inline.ui.InlineActivity;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class PermissionDataHandler implements b, c {

    /* renamed from: a  reason: collision with root package name */
    public final Set<Permission> f15083a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    public PermissionDataType f15084b = new PermissionDataType(300000);

    /* renamed from: c  reason: collision with root package name */
    public PermissionDataType f15085c = new PermissionDataType(36000000);

    /* renamed from: d  reason: collision with root package name */
    public Set<Permission> f15086d;

    /* renamed from: e  reason: collision with root package name */
    public a f15087e = f.a.a.b.a.f13937a;

    /* renamed from: f  reason: collision with root package name */
    public c.c.a.d.c.b f15088f = f.a.a.b.a.f13938b;

    static class PermissionDataType implements Parcelable {
        public static final Parcelable.Creator<PermissionDataType> CREATOR = new c();

        /* renamed from: a  reason: collision with root package name */
        public String f15089a = null;

        /* renamed from: b  reason: collision with root package name */
        public long f15090b;

        /* renamed from: c  reason: collision with root package name */
        public long f15091c = 0;

        public PermissionDataType(long j2) {
            this.f15090b = j2;
        }

        public String a() {
            return this.f15089a;
        }

        public boolean b() {
            return this.f15089a != null && System.currentTimeMillis() - this.f15091c < this.f15090b;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.f15089a);
            parcel.writeLong(this.f15090b);
            parcel.writeLong(this.f15091c);
        }

        public void a(String str) {
            this.f15091c = System.currentTimeMillis();
            this.f15089a = str;
        }

        public PermissionDataType(Parcel parcel) {
            this.f15089a = parcel.readString();
            this.f15090b = parcel.readLong();
            this.f15091c = parcel.readLong();
        }
    }

    public PermissionDataHandler(Set<Permission> set) {
        this.f15086d = set;
    }

    public static Intent a(String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("bazaar://login"));
        intent.putExtra("extra_referer", "inline-app");
        intent.putExtra("android.intent.extra.TITLE", str);
        return intent;
    }

    public static void b(Activity activity) {
        c.c.a.c.c.a.f4699b.a(new Throwable("Illegal State, all users must have phone number"));
    }

    public static void c(Activity activity) {
        activity.startActivityForResult(a(activity.getString(g.permission_data_handler_login_message)), 1);
    }

    public final Set<Permission> b() {
        return this.f15086d;
    }

    public final boolean b(Context context) {
        return b.i.b.a.a(context, "android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    public Map<String, String> a() {
        while (!this.f15083a.isEmpty()) {
            synchronized (this.f15083a) {
                this.f15083a.wait();
            }
        }
        HashMap hashMap = new HashMap();
        for (Permission next : b()) {
            int i2 = b.f14486a[next.ordinal()];
            if (i2 != 1) {
                if (i2 == 2 && this.f15085c.b()) {
                    hashMap.put(next.toString(), this.f15085c.a());
                }
            } else if (this.f15084b.b()) {
                hashMap.put(next.toString(), this.f15084b.a());
            }
        }
        return hashMap;
    }

    public void b(f.a.a.e.g gVar) {
        boolean z = false;
        for (Permission next : b()) {
            if (!this.f15083a.contains(next)) {
                int i2 = b.f14486a[next.ordinal()];
                if (i2 != 1) {
                    if (i2 == 2 && !this.f15085c.b()) {
                        z = true;
                    }
                } else if (!this.f15084b.b()) {
                    this.f15083a.add(Permission.approximateLocation);
                    Location a2 = new c.c.a.e.e.a(gVar.getApplicationContext()).a();
                    if (a2 != null) {
                        PermissionDataType permissionDataType = this.f15084b;
                        permissionDataType.a(a2.getLatitude() + ", " + a2.getLongitude() + ", ");
                    }
                    this.f15083a.remove(Permission.approximateLocation);
                    synchronized (this.f15083a) {
                        this.f15083a.notify();
                    }
                } else {
                    continue;
                }
            }
        }
        if (z && b().contains(Permission.phoneNumber)) {
            this.f15083a.add(Permission.phoneNumber);
        }
    }

    public void a(f.a.a.e.g gVar, Set<Permission> set) {
        if (set.contains(Permission.approximateLocation) && !b((Context) gVar.f())) {
            a(gVar);
        } else if (!this.f15088f.f()) {
            if (set.contains(Permission.phoneNumber)) {
                c(gVar.f());
            } else {
                b(gVar);
            }
        } else if (!set.contains(Permission.phoneNumber) || this.f15088f.b().isEmpty()) {
            b(gVar);
        } else {
            b((Activity) gVar.f());
        }
    }

    public void b(Bundle bundle) {
        bundle.putParcelable("address", this.f15084b);
        bundle.putParcelable("phone", this.f15085c);
    }

    public final void a(f.a.a.e.g gVar) {
        InlineActivity f2 = gVar.f();
        if (!a((Context) gVar.f()).getBoolean("locationPermissionAsked", false)) {
            a((Activity) gVar.f());
        } else if (b.i.a.b.a((Activity) f2, "android.permission.ACCESS_COARSE_LOCATION")) {
            a((Activity) gVar.f());
        } else {
            a((C0285i) f2);
        }
    }

    public final void a(Activity activity) {
        b.i.a.b.a(activity, new String[]{"android.permission.ACCESS_COARSE_LOCATION"}, AnswersRetryFilesSender.BACKOFF_MS);
    }

    public final void a(C0285i iVar) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", iVar.getPackageName(), null));
        iVar.startActivity(intent);
    }

    public boolean a(f.a.a.e.g gVar, int i2, int i3, Intent intent) {
        if (i2 == 1) {
            if (i3 == -1) {
                this.f15085c.a(this.f15088f.b());
                gVar.h().j().a(gVar.h().f());
                if (!b().contains(Permission.phoneNumber) || this.f15088f.b().isEmpty()) {
                    b(gVar);
                } else {
                    b((Activity) gVar.f());
                }
            } else {
                b(gVar);
            }
            return true;
        } else if (i2 != 5) {
            return false;
        } else {
            if (i3 == -1) {
                this.f15085c.a(this.f15088f.b());
            }
            b(gVar);
            return true;
        }
    }

    public void a(f.a.a.e.g gVar, int i2, String[] strArr, int[] iArr) {
        a((Context) gVar.f()).edit().putBoolean("locationPermissionAsked", true).apply();
        if (i2 != 1000) {
            return;
        }
        if (!this.f15088f.f()) {
            if (b().contains(Permission.phoneNumber)) {
                c(gVar.f());
            } else {
                b(gVar);
            }
        } else if (!b().contains(Permission.phoneNumber) || this.f15088f.b().isEmpty()) {
            b(gVar);
        } else {
            b((Activity) gVar.f());
        }
    }

    public final SharedPreferences a(Context context) {
        return context.getSharedPreferences("inline_permissions_pref", 0);
    }

    public void a(Bundle bundle) {
        this.f15084b = (PermissionDataType) bundle.getParcelable("address");
        this.f15085c = (PermissionDataType) bundle.getParcelable("phone");
    }
}
