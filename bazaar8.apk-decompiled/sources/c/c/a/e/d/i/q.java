package c.c.a.e.d.i;

import c.c.a.c.b.d;
import c.c.a.e.c;
import c.c.a.e.d.h.e.a.a.n;
import com.farsitel.bazaar.data.entity.EntityType;
import h.f.b.j;
import java.io.File;
import java.math.BigInteger;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: FileDownloadHelper.kt */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    public final c f5189a;

    /* renamed from: b  reason: collision with root package name */
    public final n f5190b;

    public q(c cVar, n nVar) {
        j.b(cVar, "storageManager");
        j.b(nVar, "videoStorage");
        this.f5189a = cVar;
        this.f5190b = nVar;
    }

    public final File a(String str, EntityType entityType, boolean z) {
        File file;
        j.b(str, "entryId");
        j.b(entityType, "entityType");
        switch (p.f5188a[entityType.ordinal()]) {
            case 1:
                file = this.f5190b.d(str);
                break;
            case 2:
                file = this.f5190b.c(str);
                break;
            case 3:
            case 4:
                file = this.f5189a.a(str, entityType, z);
                break;
            case 5:
                file = this.f5190b.a(str);
                break;
            case 6:
                file = this.f5189a.a(str, entityType, z);
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        d.a(file);
        return file;
    }

    public final boolean b(String str, EntityType entityType) {
        j.b(str, "entryId");
        j.b(entityType, "entityType");
        return this.f5189a.j(str, entityType);
    }

    public final boolean c(String str, EntityType entityType) {
        j.b(str, "entityId");
        j.b(entityType, "entityType");
        File a2 = a(str, entityType, true);
        if (!a2.exists()) {
            a2 = a(str, entityType, false);
        }
        if (!a2.exists()) {
            return false;
        }
        return this.f5189a.a(a2, str, entityType);
    }

    public final BigInteger a(File file) {
        j.b(file, "file");
        return this.f5189a.b(file);
    }

    public final File a(String str, EntityType entityType) {
        j.b(str, "entryId");
        j.b(entityType, "entityType");
        return this.f5189a.d(str, entityType);
    }

    public final File a(String str) {
        j.b(str, "entityId");
        return this.f5189a.a(str);
    }
}
