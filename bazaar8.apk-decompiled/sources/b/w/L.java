package b.w;

import android.annotation.SuppressLint;
import b.w.K;
import java.util.HashMap;
import java.util.Map;

@SuppressLint({"TypeParameterUnusedInFormals"})
/* compiled from: NavigatorProvider */
public class L {

    /* renamed from: a  reason: collision with root package name */
    public static final HashMap<Class<?>, String> f3256a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    public final HashMap<String, K<? extends o>> f3257b = new HashMap<>();

    public static String a(Class<? extends K> cls) {
        String str = f3256a.get(cls);
        if (str == null) {
            K.b bVar = (K.b) cls.getAnnotation(K.b.class);
            str = bVar != null ? bVar.value() : null;
            if (b(str)) {
                f3256a.put(cls, str);
            } else {
                throw new IllegalArgumentException("No @Navigator.Name annotation found for " + cls.getSimpleName());
            }
        }
        return str;
    }

    public static boolean b(String str) {
        return str != null && !str.isEmpty();
    }

    public <T extends K<?>> T a(String str) {
        if (b(str)) {
            T t = (K) this.f3257b.get(str);
            if (t != null) {
                return t;
            }
            throw new IllegalStateException("Could not find Navigator with name \"" + str + "\". You must call NavController.addNavigator() for each navigation type.");
        }
        throw new IllegalArgumentException("navigator name cannot be an empty string");
    }

    public final K<? extends o> a(K<? extends o> k2) {
        return a(a((Class<? extends K>) k2.getClass()), k2);
    }

    public K<? extends o> a(String str, K<? extends o> k2) {
        if (b(str)) {
            return this.f3257b.put(str, k2);
        }
        throw new IllegalArgumentException("navigator name cannot be an empty string");
    }

    public Map<String, K<? extends o>> a() {
        return this.f3257b;
    }
}
