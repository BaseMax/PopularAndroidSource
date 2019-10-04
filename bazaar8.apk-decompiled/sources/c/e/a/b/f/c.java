package c.e.a.b.f;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

public final class c implements DynamiteModule.a {
    public final DynamiteModule.a.b a(Context context, String str, DynamiteModule.a.C0137a aVar) {
        DynamiteModule.a.b bVar = new DynamiteModule.a.b();
        bVar.f13157a = aVar.a(context, str);
        if (bVar.f13157a != 0) {
            bVar.f13159c = -1;
        } else {
            bVar.f13158b = aVar.a(context, str, true);
            if (bVar.f13158b != 0) {
                bVar.f13159c = 1;
            }
        }
        return bVar;
    }
}
