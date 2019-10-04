package c.b.a.c.a;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;

/* compiled from: DataFetcher */
public interface d<T> {

    /* compiled from: DataFetcher */
    public interface a<T> {
        void a(Exception exc);

        void a(T t);
    }

    Class<T> a();

    void a(Priority priority, a<? super T> aVar);

    void b();

    DataSource c();

    void cancel();
}
