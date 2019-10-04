package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.yandex.metrica.impl.ob.kz;

public class lc extends kz {

    /* renamed from: a  reason: collision with root package name */
    private String f6362a;

    protected static abstract class a<T extends lc, A extends kz.a> extends kz.b<T, A> {
        protected a(Context context, String str) {
            super(context, str);
        }

        /* renamed from: b */
        public T c(kz.c<A> cVar) {
            T t = (lc) super.a(cVar);
            String packageName = this.f6350a.getPackageName();
            try {
                t.j(a(c()));
            } catch (PackageManager.NameNotFoundException unused) {
                if (TextUtils.equals(packageName, this.f6351b)) {
                    t.j(a(this.f6350a.getApplicationInfo()));
                } else {
                    t.j("0");
                }
            }
            return t;
        }

        /* access modifiers changed from: package-private */
        public ApplicationInfo c() throws PackageManager.NameNotFoundException {
            return this.f6350a.getPackageManager().getApplicationInfo(this.f6351b, 0);
        }

        private static String a(ApplicationInfo applicationInfo) {
            return (applicationInfo.flags & 2) != 0 ? "1" : "0";
        }
    }

    public String C() {
        return this.f6362a;
    }

    /* access modifiers changed from: package-private */
    public void j(String str) {
        this.f6362a = str;
    }

    public String toString() {
        return "CoreRequestConfig{mAppDebuggable='" + this.f6362a + '\'' + super.toString() + '}';
    }
}
