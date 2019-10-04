package b.H.a.c;

import androidx.work.WorkInfo;
import b.H.a.c.o;
import b.c.a.c.a;
import java.util.ArrayList;
import java.util.List;

/* compiled from: WorkSpec */
class n implements a<List<o.b>, List<WorkInfo>> {
    /* renamed from: a */
    public List<WorkInfo> apply(List<o.b> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (o.b a2 : list) {
            arrayList.add(a2.a());
        }
        return arrayList;
    }
}
