package c.c.a.e.d.b;

import androidx.lifecycle.LiveData;
import com.farsitel.bazaar.data.entity.LocalUpgradableApp;
import java.util.List;

/* compiled from: UpgradableAppDao.kt */
public interface L {
    LiveData<List<LocalUpgradableApp>> a();

    LocalUpgradableApp a(String str);

    void a(LocalUpgradableApp localUpgradableApp);

    void a(String str, long j2);

    void a(List<LocalUpgradableApp> list);

    Long b(String str);

    List<LocalUpgradableApp> b();

    void c();

    void clear();

    List<LocalUpgradableApp> d();

    void delete(String str);
}
