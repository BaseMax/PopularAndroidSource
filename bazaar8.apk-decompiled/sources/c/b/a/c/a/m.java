package c.b.a.c.a;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import c.b.a.c.a.d;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.FileNotFoundException;
import java.io.IOException;

/* compiled from: LocalUriFetcher */
public abstract class m<T> implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f3803a;

    /* renamed from: b  reason: collision with root package name */
    public final ContentResolver f3804b;

    /* renamed from: c  reason: collision with root package name */
    public T f3805c;

    public m(ContentResolver contentResolver, Uri uri) {
        this.f3804b = contentResolver;
        this.f3803a = uri;
    }

    public abstract T a(Uri uri, ContentResolver contentResolver);

    public final void a(Priority priority, d.a<? super T> aVar) {
        try {
            this.f3805c = a(this.f3803a, this.f3804b);
            aVar.a(this.f3805c);
        } catch (FileNotFoundException e2) {
            if (Log.isLoggable("LocalUriFetcher", 3)) {
                Log.d("LocalUriFetcher", "Failed to open Uri", e2);
            }
            aVar.a((Exception) e2);
        }
    }

    public abstract void a(T t);

    public void b() {
        T t = this.f3805c;
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
