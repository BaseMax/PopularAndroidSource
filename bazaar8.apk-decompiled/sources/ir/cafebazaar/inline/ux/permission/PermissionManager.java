package ir.cafebazaar.inline.ux.permission;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import f.a.a.e.g;
import f.a.a.g.g.e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class PermissionManager implements Parcelable {
    public static final Parcelable.Creator<PermissionManager> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    public PermissionDataHandler f15092a;

    /* renamed from: b  reason: collision with root package name */
    public Set<Permission> f15093b;

    /* renamed from: c  reason: collision with root package name */
    public Set<Permission> f15094c;

    /* renamed from: d  reason: collision with root package name */
    public Set<e> f15095d;

    public PermissionManager() {
        this.f15093b = new HashSet();
        this.f15094c = new HashSet();
        this.f15095d = new HashSet();
        this.f15092a = new PermissionDataHandler(this.f15093b);
    }

    public final SharedPreferences a(Context context) {
        return context.getSharedPreferences("inline_permissions_pref", 0);
    }

    public void b(List<e> list) {
        this.f15095d.clear();
        for (e next : list) {
            if (!this.f15093b.contains(next.b()) && !this.f15094c.contains(next.b())) {
                this.f15095d.add(next);
            }
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeList(new ArrayList(this.f15094c));
        Bundle bundle = new Bundle();
        this.f15092a.b(bundle);
        parcel.writeBundle(bundle);
    }

    public final String a(String str, Permission permission) {
        return str + "__" + permission.toString().toLowerCase();
    }

    public Set<e> a(g gVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        SharedPreferences a2 = a((Context) gVar.f());
        String f2 = gVar.h().f();
        for (e next : this.f15095d) {
            if (!a2.contains(a(f2, next.b()))) {
                hashSet.add(next);
            } else if (a2.getBoolean(a(f2, next.b()), false)) {
                hashSet2.add(next.b());
            }
        }
        this.f15093b.addAll(hashSet2);
        this.f15092a.a(gVar, hashSet2);
        return hashSet;
    }

    public PermissionManager(Parcel parcel) {
        this();
        ArrayList arrayList = new ArrayList();
        parcel.readList(arrayList, Permission.class.getClassLoader());
        this.f15094c.addAll(arrayList);
        this.f15092a.a(parcel.readBundle(PermissionManager.class.getClassLoader()));
    }

    public void a(g gVar, List<e> list) {
        this.f15095d.clear();
        SharedPreferences.Editor edit = a((Context) gVar.f()).edit();
        for (e next : list) {
            this.f15093b.add(next.b());
            edit.putBoolean(a(gVar.h().f(), next.b()), true);
        }
        edit.apply();
    }

    public void a(List<Permission> list) {
        this.f15094c.addAll(list);
    }

    public PermissionDataHandler a() {
        return this.f15092a;
    }
}
