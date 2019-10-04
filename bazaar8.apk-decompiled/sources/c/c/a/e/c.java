package c.c.a.e;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import c.c.a.c.b.d;
import c.c.a.c.h.e;
import com.farsitel.bazaar.data.entity.EntityType;
import h.f.b.f;
import h.f.b.j;
import java.io.File;
import java.math.BigInteger;

/* compiled from: StorageManager.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4899a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final Context f4900b;

    /* compiled from: StorageManager.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public c(Context context) {
        j.b(context, "context");
        this.f4900b = context.getApplicationContext();
    }

    public final File a(String str, EntityType entityType, boolean z) {
        j.b(str, "entryId");
        j.b(entityType, "entityType");
        if (z) {
            return g(str, entityType);
        }
        return c(str, entityType);
    }

    public final BigInteger b(File file) {
        j.b(file, "file");
        return d.b(file);
    }

    public final File c(String str, EntityType entityType) {
        File file = new File(new File(this.f4900b.getExternalFilesDir(null), entityType.getStorageFolderPath()), i(str, entityType));
        a(file);
        return file;
    }

    public final File d(String str, EntityType entityType) {
        j.b(str, "entryId");
        j.b(entityType, "entityType");
        if (!j(str, entityType)) {
            return null;
        }
        File f2 = f(str, entityType);
        return f2.exists() ? f2 : b(str, entityType);
    }

    public final File e(String str, EntityType entityType) {
        if (!j.a((Object) Environment.getExternalStorageState(), (Object) "mounted")) {
            return d(str, entityType);
        }
        File file = new File(new File(new File(Environment.getExternalStorageDirectory(), "icm"), "bazaar"), h(str, entityType));
        a(file);
        return file;
    }

    public final File f(String str, EntityType entityType) {
        Context context = this.f4900b;
        j.a((Object) context, "applicationContext");
        File file = new File(new File(context.getFilesDir(), entityType.getStorageFolderPath()), h(str, entityType));
        a(file);
        return file;
    }

    public final File g(String str, EntityType entityType) {
        Context context = this.f4900b;
        j.a((Object) context, "applicationContext");
        File file = new File(new File(context.getFilesDir(), entityType.getStorageFolderPath()), i(str, entityType));
        a(file);
        return file;
    }

    public final String h(String str, EntityType entityType) {
        return str + entityType.getStorageFileExtension();
    }

    public final String i(String str, EntityType entityType) {
        return str + "_temp" + a(entityType) + entityType.getStorageFileExtension();
    }

    public final boolean j(String str, EntityType entityType) {
        j.b(str, "entryId");
        j.b(entityType, "entityType");
        return f(str, entityType).exists() || b(str, entityType).exists();
    }

    public final void k(String str, EntityType entityType) {
        j.b(str, "entryId");
        j.b(entityType, "entityType");
        File d2 = d(str, entityType);
        if (d2 != null) {
            d2.delete();
        }
    }

    public final File b(String str, EntityType entityType) {
        File file = new File(new File(this.f4900b.getExternalFilesDir(null), entityType.getStorageFolderPath()), h(str, entityType));
        a(file);
        return file;
    }

    public final void a(File file) {
        d.a(file);
    }

    public final String a(EntityType entityType) {
        return d.f4904a[entityType.ordinal()] != 1 ? "" : "_diff";
    }

    public final boolean a(File file, String str, EntityType entityType) {
        j.b(file, "sourceFile");
        j.b(str, "destinationEntityID");
        j.b(entityType, "entityType");
        return a(file, b(str, entityType));
    }

    public final boolean a(String str, EntityType entityType) {
        j.b(str, "destinationEntityID");
        j.b(entityType, "entityType");
        File e2 = e(str, entityType);
        File d2 = d(str, entityType);
        if (d2 == null || e2 == null) {
            return false;
        }
        return d.a(d2, e2);
    }

    public final Uri c(File file) {
        j.b(file, "file");
        Context context = this.f4900b;
        j.a((Object) context, "applicationContext");
        return c.c.a.e.c.c.a(file, context);
    }

    public final boolean a(File file, File file2) {
        return d.b(file, file2);
    }

    public final File a(String str) {
        j.b(str, "entityId");
        e eVar = e.f4731a;
        Context context = this.f4900b;
        j.a((Object) context, "applicationContext");
        return eVar.b(context, str);
    }
}
