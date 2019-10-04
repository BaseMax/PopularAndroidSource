package cab.snapp.passenger.data_access_layer.a;

import io.fabric.sdk.android.services.b.b;
import io.reactivex.e.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    static c f475a;

    /* renamed from: b  reason: collision with root package name */
    b f476b = new b();
    int c = 0;
    HashMap<String, Integer> d = new HashMap<>();

    public static synchronized c getInstance() {
        c cVar;
        synchronized (c.class) {
            if (f475a == null) {
                f475a = new c();
            }
            cVar = f475a;
        }
        return cVar;
    }

    public final synchronized String getPrivateChannelId(String... strArr) {
        return getPrivateChannelId((List<String>) new ArrayList(Arrays.asList(strArr)));
    }

    public final synchronized String getPrivateChannelId(List<String> list) {
        String sb;
        ArrayList<String> arrayList = new ArrayList<>(list);
        Collections.sort(arrayList);
        StringBuilder sb2 = new StringBuilder("c_id");
        for (String lowerCase : arrayList) {
            sb2.append(b.ROLL_OVER_FILE_NAME_SEPARATOR);
            sb2.append(lowerCase.toLowerCase());
        }
        sb = sb2.toString();
        if (!this.d.containsKey(sb)) {
            HashMap<String, Integer> hashMap = this.d;
            int i = this.c + 1;
            this.c = i;
            hashMap.put(sb, Integer.valueOf(i));
        }
        return sb;
    }

    public final synchronized <T> boolean emitToPrivateChannel(String str, T t) {
        if (!this.d.containsKey(str)) {
            return false;
        }
        this.f476b.emit(this.d.get(str).intValue(), t);
        return true;
    }

    public final <T> io.reactivex.b.c subscribeToPrivateChannel(String str, g<T> gVar) {
        if (!this.d.containsKey(str)) {
            return null;
        }
        return this.f476b.subscribe(this.d.get(str).intValue(), gVar);
    }
}
