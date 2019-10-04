package b.z;

import androidx.room.RoomDatabase;
import b.C.a.f;

/* renamed from: b.z.d  reason: case insensitive filesystem */
/* compiled from: EntityDeletionOrUpdateAdapter */
public abstract class C0355d<T> extends C {
    public C0355d(RoomDatabase roomDatabase) {
        super(roomDatabase);
    }

    public final int a(T t) {
        f a2 = a();
        try {
            a(a2, t);
            return a2.l();
        } finally {
            a(a2);
        }
    }

    public abstract void a(f fVar, T t);
}
