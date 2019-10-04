package c.f.a;

import android.net.NetworkInfo;
import c.f.a.P;
import com.squareup.picasso.Picasso;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: PicassoExecutorService */
public class E extends ThreadPoolExecutor {

    /* compiled from: PicassoExecutorService */
    private static final class a extends FutureTask<C1038i> implements Comparable<a> {

        /* renamed from: a  reason: collision with root package name */
        public final C1038i f11887a;

        public a(C1038i iVar) {
            super(iVar, null);
            this.f11887a = iVar;
        }

        /* renamed from: a */
        public int compareTo(a aVar) {
            Picasso.Priority k2 = this.f11887a.k();
            Picasso.Priority k3 = aVar.f11887a.k();
            return k2 == k3 ? this.f11887a.f11985e - aVar.f11887a.f11985e : k3.ordinal() - k2.ordinal();
        }
    }

    public E() {
        super(3, 3, 0, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new P.b());
    }

    public void a(NetworkInfo networkInfo) {
        if (networkInfo == null || !networkInfo.isConnectedOrConnecting()) {
            a(3);
            return;
        }
        int type = networkInfo.getType();
        if (type == 0) {
            int subtype = networkInfo.getSubtype();
            switch (subtype) {
                case 1:
                case 2:
                    a(1);
                    break;
                case 3:
                case 4:
                case 5:
                case 6:
                    a(2);
                    break;
                default:
                    switch (subtype) {
                        case 12:
                            break;
                        case 13:
                        case 14:
                        case 15:
                            a(3);
                            break;
                        default:
                            a(3);
                            break;
                    }
                    a(2);
                    break;
            }
        } else if (type == 1 || type == 6 || type == 9) {
            a(4);
        } else {
            a(3);
        }
    }

    public Future<?> submit(Runnable runnable) {
        a aVar = new a((C1038i) runnable);
        execute(aVar);
        return aVar;
    }

    public final void a(int i2) {
        setCorePoolSize(i2);
        setMaximumPoolSize(i2);
    }
}
