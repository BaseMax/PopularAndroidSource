package b.z;

import androidx.lifecycle.LiveData;
import androidx.room.RoomDatabase;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.Callable;

/* compiled from: InvalidationLiveDataContainer */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public final Set<LiveData> f3623a = Collections.newSetFromMap(new IdentityHashMap());

    /* renamed from: b  reason: collision with root package name */
    public final RoomDatabase f3624b;

    public h(RoomDatabase roomDatabase) {
        this.f3624b = roomDatabase;
    }

    public <T> LiveData<T> a(String[] strArr, boolean z, Callable<T> callable) {
        B b2 = new B(this.f3624b, this, z, callable, strArr);
        return b2;
    }

    public void b(LiveData liveData) {
        this.f3623a.remove(liveData);
    }

    public void a(LiveData liveData) {
        this.f3623a.add(liveData);
    }
}
