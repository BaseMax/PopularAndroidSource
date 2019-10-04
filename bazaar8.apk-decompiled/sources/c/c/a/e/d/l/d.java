package c.c.a.e.d.l;

import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.data.entity.Either;
import h.f.b.j;
import java.util.List;
import java.util.Locale;

/* compiled from: InstalledAppRepository.kt */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final b f5229a;

    public d(b bVar) {
        j.b(bVar, "installedAppLocalDataSource");
        this.f5229a = bVar;
    }

    public final Either<List<RecyclerData>> a(Locale locale) {
        j.b(locale, "locale");
        return this.f5229a.a(locale);
    }
}
