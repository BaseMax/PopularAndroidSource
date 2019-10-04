package c.c.a.e.d.l;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import c.c.a.c.b.h;
import c.c.a.c.c.a;
import c.c.a.e.f.g;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.InstalledApp;
import h.a.m;
import h.a.p;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* compiled from: InstalledAppLocalDataSource.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final Context f5227a;

    public b(Context context) {
        j.b(context, "context");
        this.f5227a = context;
    }

    public final Either<List<RecyclerData>> a(Locale locale) {
        j.b(locale, "locale");
        try {
            ArrayList arrayList = new ArrayList();
            PackageManager packageManager = this.f5227a.getPackageManager();
            List<PackageInfo> installedPackages = packageManager.getInstalledPackages(128);
            j.a((Object) installedPackages, "packs");
            if (installedPackages.size() > 1) {
                p.a(installedPackages, new a());
            }
            for (PackageInfo packageInfo : installedPackages) {
                if (packageInfo.versionName != null) {
                    try {
                        ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageInfo.packageName, 128);
                        if ((applicationInfo.flags & 1) != 0) {
                            Intent intent = new Intent("android.intent.action.MAIN", null);
                            intent.addCategory("android.intent.category.LAUNCHER");
                            intent.setPackage(packageInfo.packageName);
                            if (packageManager.queryIntentActivities(intent, 0).size() <= 0) {
                            }
                        }
                        if (applicationInfo.enabled) {
                            j.a((Object) packageInfo, "packageInfo");
                            arrayList.add(h.b(packageInfo, this.f5227a, locale));
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
            }
            return new Either.Success(arrayList);
        } catch (Exception e2) {
            a.f4699b.b(e2);
            return new Either.Failure(ErrorModel.UnExpected.INSTANCE);
        }
    }

    public final List<InstalledApp> a() {
        List<PackageInfo> installedPackages = this.f5227a.getPackageManager().getInstalledPackages(128);
        j.a((Object) installedPackages, "context.packageManager\n …edPackages(GET_META_DATA)");
        ArrayList<PackageInfo> arrayList = new ArrayList<>();
        for (T next : installedPackages) {
            if (((PackageInfo) next).versionName != null) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList(m.a(arrayList, 10));
        for (PackageInfo packageInfo : arrayList) {
            j.a((Object) packageInfo, "it");
            arrayList2.add(g.a(packageInfo, this.f5227a));
        }
        return arrayList2;
    }
}
