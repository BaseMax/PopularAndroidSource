package b.b.a;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;

/* compiled from: ResourcesFlusher */
public class D {

    /* renamed from: a  reason: collision with root package name */
    public static Field f1674a;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f1675b;

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f1676c;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f1677d;

    /* renamed from: e  reason: collision with root package name */
    public static Field f1678e;

    /* renamed from: f  reason: collision with root package name */
    public static boolean f1679f;

    /* renamed from: g  reason: collision with root package name */
    public static Field f1680g;

    /* renamed from: h  reason: collision with root package name */
    public static boolean f1681h;

    public static void a(Resources resources) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 28) {
            if (i2 >= 24) {
                d(resources);
            } else if (i2 >= 23) {
                c(resources);
            } else if (i2 >= 21) {
                b(resources);
            }
        }
    }

    public static void b(Resources resources) {
        Map map;
        if (!f1675b) {
            try {
                f1674a = Resources.class.getDeclaredField("mDrawableCache");
                f1674a.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e2);
            }
            f1675b = true;
        }
        Field field = f1674a;
        if (field != null) {
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e3);
                map = null;
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    public static void c(Resources resources) {
        if (!f1675b) {
            try {
                f1674a = Resources.class.getDeclaredField("mDrawableCache");
                f1674a.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e2);
            }
            f1675b = true;
        }
        Object obj = null;
        Field field = f1674a;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e3);
            }
        }
        if (obj != null) {
            a(obj);
        }
    }

    public static void d(Resources resources) {
        Object obj;
        if (!f1681h) {
            try {
                f1680g = Resources.class.getDeclaredField("mResourcesImpl");
                f1680g.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e2);
            }
            f1681h = true;
        }
        Field field = f1680g;
        if (field != null) {
            Object obj2 = null;
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e3);
                obj = null;
            }
            if (obj != null) {
                if (!f1675b) {
                    try {
                        f1674a = obj.getClass().getDeclaredField("mDrawableCache");
                        f1674a.setAccessible(true);
                    } catch (NoSuchFieldException e4) {
                        Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e4);
                    }
                    f1675b = true;
                }
                Field field2 = f1674a;
                if (field2 != null) {
                    try {
                        obj2 = field2.get(obj);
                    } catch (IllegalAccessException e5) {
                        Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e5);
                    }
                }
                if (obj2 != null) {
                    a(obj2);
                }
            }
        }
    }

    public static void a(Object obj) {
        LongSparseArray longSparseArray;
        if (!f1677d) {
            try {
                f1676c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e2) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e2);
            }
            f1677d = true;
        }
        Class<?> cls = f1676c;
        if (cls != null) {
            if (!f1679f) {
                try {
                    f1678e = cls.getDeclaredField("mUnthemedEntries");
                    f1678e.setAccessible(true);
                } catch (NoSuchFieldException e3) {
                    Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e3);
                }
                f1679f = true;
            }
            Field field = f1678e;
            if (field != null) {
                try {
                    longSparseArray = (LongSparseArray) field.get(obj);
                } catch (IllegalAccessException e4) {
                    Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e4);
                    longSparseArray = null;
                }
                if (longSparseArray != null) {
                    longSparseArray.clear();
                }
            }
        }
    }
}
