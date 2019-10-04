package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzdp;
import java.util.Comparator;

public final class Ma implements Comparator<zzdp> {
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzdp zzdp = (zzdp) obj;
        zzdp zzdp2 = (zzdp) obj2;
        Qa qa = (Qa) zzdp.iterator();
        Qa qa2 = (Qa) zzdp2.iterator();
        while (qa.hasNext() && qa2.hasNext()) {
            int compare = Integer.compare(zzdp.a(qa.nextByte()), zzdp.a(qa2.nextByte()));
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzdp.size(), zzdp2.size());
    }
}
