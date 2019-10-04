package cab.snapp.b;

import android.content.Context;
import com.b.a.g;

public final class a {
    public a(Context context) {
        g.init(context).build();
    }

    public final <T> boolean put(String str, T t) {
        return g.put(str, t);
    }

    public final <T> T get(String str) {
        if (containsKey(str)) {
            return g.get(str);
        }
        return null;
    }

    public final boolean delete(String str) {
        return containsKey(str) && g.delete(str);
    }

    public final boolean deleteAll() {
        return g.deleteAll();
    }

    public final boolean containsKey(String str) {
        return g.contains(str);
    }
}
