package b.w;

import android.os.Bundle;
import b.w.o;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: Navigator */
public abstract class K<D extends o> {

    /* compiled from: Navigator */
    public interface a {
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* compiled from: Navigator */
    public @interface b {
        String value();
    }

    public abstract D a();

    public abstract o a(D d2, Bundle bundle, w wVar, a aVar);

    public void a(Bundle bundle) {
    }

    public Bundle b() {
        return null;
    }

    public abstract boolean c();
}
