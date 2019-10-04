package b.z;

import androidx.room.RoomDatabase;
import h.f.b.j;
import i.a.C;
import i.a.C1110ja;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.TypeCastException;

/* renamed from: b.z.b  reason: case insensitive filesystem */
/* compiled from: CoroutinesRoom.kt */
public final class C0353b {
    public static final C a(RoomDatabase roomDatabase) {
        j.b(roomDatabase, "$this$queryDispatcher");
        Map<String, Object> f2 = roomDatabase.f();
        j.a((Object) f2, "backingFieldMap");
        Object obj = f2.get("QueryDispatcher");
        if (obj == null) {
            Executor j2 = roomDatabase.j();
            j.a((Object) j2, "queryExecutor");
            obj = C1110ja.a(j2);
            f2.put("QueryDispatcher", obj);
        }
        if (obj != null) {
            return (C) obj;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
    }

    public static final C b(RoomDatabase roomDatabase) {
        j.b(roomDatabase, "$this$transactionDispatcher");
        Map<String, Object> f2 = roomDatabase.f();
        j.a((Object) f2, "backingFieldMap");
        Object obj = f2.get("TransactionDispatcher");
        if (obj == null) {
            Executor j2 = roomDatabase.j();
            j.a((Object) j2, "queryExecutor");
            obj = C1110ja.a(j2);
            f2.put("TransactionDispatcher", obj);
        }
        if (obj != null) {
            return (C) obj;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
    }
}
