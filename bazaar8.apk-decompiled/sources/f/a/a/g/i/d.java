package f.a.a.g.i;

import android.content.pm.PackageInfo;
import java.util.Comparator;

/* compiled from: ShortcutDialog */
class d implements Comparator<PackageInfo> {
    /* renamed from: a */
    public int compare(PackageInfo packageInfo, PackageInfo packageInfo2) {
        long j2 = packageInfo2.firstInstallTime;
        long j3 = packageInfo.firstInstallTime;
        if (j2 > j3) {
            return 1;
        }
        return j2 < j3 ? -1 : 0;
    }
}
