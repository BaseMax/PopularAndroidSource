package c.b.a.c.a;

import android.content.res.AssetManager;
import android.util.Log;
import c.b.a.c.a.d;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;

/* compiled from: AssetPathFetcher */
public abstract class b<T> implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    public final String f3779a;

    /* renamed from: b  reason: collision with root package name */
    public final AssetManager f3780b;

    /* renamed from: c  reason: collision with root package name */
    public T f3781c;

    public b(AssetManager assetManager, String str) {
        this.f3780b = assetManager;
        this.f3779a = str;
    }

    public abstract T a(AssetManager assetManager, String str);

    public void a(Priority priority, d.a<? super T> aVar) {
        try {
            this.f3781c = a(this.f3780b, this.f3779a);
            aVar.a(this.f3781c);
        } catch (IOException e2) {
            if (Log.isLoggable("AssetPathFetcher", 3)) {
                Log.d("AssetPathFetcher", "Failed to load data from asset manager", e2);
            }
            aVar.a((Exception) e2);
        }
    }

    public abstract void a(T t);

    public void b() {
        T t = this.f3781c;
        if (t != null) {
            try {
                a(t);
            } catch (IOException unused) {
            }
        }
    }

    public DataSource c() {
        return DataSource.LOCAL;
    }

    public void cancel() {
    }
}
