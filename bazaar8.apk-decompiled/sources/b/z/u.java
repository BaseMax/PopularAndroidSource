package b.z;

import android.content.Context;
import androidx.room.RoomDatabase;

/* compiled from: Room */
public class u {
    public static <T extends RoomDatabase> RoomDatabase.a<T> a(Context context, Class<T> cls, String str) {
        if (str != null && str.trim().length() != 0) {
            return new RoomDatabase.a<>(context, cls, str);
        }
        throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
    }

    public static <T extends RoomDatabase> RoomDatabase.a<T> a(Context context, Class<T> cls) {
        return new RoomDatabase.a<>(context, cls, null);
    }

    public static <T, C> T a(Class<C> cls, String str) {
        String str2;
        String str3;
        String name = cls.getPackage().getName();
        String canonicalName = cls.getCanonicalName();
        if (!name.isEmpty()) {
            canonicalName = canonicalName.substring(name.length() + 1);
        }
        try {
            if (name.isEmpty()) {
                str3 = str2;
            } else {
                str3 = name + "." + str2;
            }
            return Class.forName(str3).newInstance();
        } catch (ClassNotFoundException unused) {
            throw new RuntimeException("cannot find implementation for " + cls.getCanonicalName() + ". " + str2 + " does not exist");
        } catch (IllegalAccessException unused2) {
            throw new RuntimeException("Cannot access the constructor" + cls.getCanonicalName());
        } catch (InstantiationException unused3) {
            throw new RuntimeException("Failed to create an instance of " + cls.getCanonicalName());
        }
    }
}
