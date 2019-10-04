package c.e.c.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import b.f.C0243b;
import b.i.b.a;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.zzz;
import java.io.File;
import java.io.IOException;
import java.util.Map;

/* renamed from: c.e.c.d.z  reason: case insensitive filesystem */
public final class C1005z {

    /* renamed from: a  reason: collision with root package name */
    public final SharedPreferences f11694a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f11695b;

    /* renamed from: c  reason: collision with root package name */
    public final Z f11696c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, C0984d> f11697d;

    public C1005z(Context context) {
        this(context, new Z());
    }

    public final synchronized void a(String str) {
        this.f11694a.edit().putString("topic_operaion_queue", str).apply();
    }

    public final synchronized String b() {
        return this.f11694a.getString("topic_operaion_queue", "");
    }

    public final synchronized void c() {
        this.f11697d.clear();
        Z.a(this.f11695b);
        this.f11694a.edit().clear().commit();
    }

    public C1005z(Context context, Z z) {
        this.f11697d = new C0243b();
        this.f11695b = context;
        this.f11694a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        this.f11696c = z;
        File file = new File(a.c(this.f11695b), "com.google.android.gms.appid-no-backup");
        if (!file.exists()) {
            try {
                if (file.createNewFile() && !a()) {
                    Log.i("FirebaseInstanceId", "App restored, clearing state");
                    c();
                    FirebaseInstanceId.b().j();
                }
            } catch (IOException e2) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf = String.valueOf(e2.getMessage());
                    Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(valueOf) : new String("Error creating file in no backup dir: "));
                }
            }
        }
    }

    public final synchronized C1004y b(String str, String str2, String str3) {
        return C1004y.a(this.f11694a.getString(a(str, str2, str3), null));
    }

    public final synchronized boolean a() {
        return this.f11694a.getAll().isEmpty();
    }

    public final synchronized C0984d b(String str) {
        C0984d dVar;
        C0984d dVar2 = this.f11697d.get(str);
        if (dVar2 != null) {
            return dVar2;
        }
        try {
            dVar = this.f11696c.a(this.f11695b, str);
        } catch (zzz unused) {
            Log.w("FirebaseInstanceId", "Stored data is corrupt, generating new identity");
            FirebaseInstanceId.b().j();
            dVar = this.f11696c.b(this.f11695b, str);
        }
        this.f11697d.put(str, dVar);
        return dVar;
    }

    public static String a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        return sb.toString();
    }

    public static String a(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|S|");
        sb.append(str2);
        return sb.toString();
    }

    public final synchronized void c(String str) {
        String concat = String.valueOf(str).concat("|T|");
        SharedPreferences.Editor edit = this.f11694a.edit();
        for (String next : this.f11694a.getAll().keySet()) {
            if (next.startsWith(concat)) {
                edit.remove(next);
            }
        }
        edit.commit();
    }

    public final synchronized void a(String str, String str2, String str3, String str4, String str5) {
        String a2 = C1004y.a(str4, str5, System.currentTimeMillis());
        if (a2 != null) {
            SharedPreferences.Editor edit = this.f11694a.edit();
            edit.putString(a(str, str2, str3), a2);
            edit.commit();
        }
    }
}
