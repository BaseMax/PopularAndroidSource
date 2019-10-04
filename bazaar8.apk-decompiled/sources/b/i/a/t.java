package b.i.a;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: TaskStackBuilder */
public final class t implements Iterable<Intent> {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList<Intent> f2596a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    public final Context f2597b;

    /* compiled from: TaskStackBuilder */
    public interface a {
        Intent n();
    }

    public t(Context context) {
        this.f2597b = context;
    }

    public static t a(Context context) {
        return new t(context);
    }

    public t b(Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null) {
            component = intent.resolveActivity(this.f2597b.getPackageManager());
        }
        if (component != null) {
            a(component);
        }
        a(intent);
        return this;
    }

    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f2596a.iterator();
    }

    public t a(Intent intent) {
        this.f2596a.add(intent);
        return this;
    }

    public t a(Activity activity) {
        Intent n = activity instanceof a ? ((a) activity).n() : null;
        if (n == null) {
            n = l.a(activity);
        }
        if (n != null) {
            ComponentName component = n.getComponent();
            if (component == null) {
                component = n.resolveActivity(this.f2597b.getPackageManager());
            }
            a(component);
            a(n);
        }
        return this;
    }

    public void b() {
        a((Bundle) null);
    }

    public t a(ComponentName componentName) {
        int size = this.f2596a.size();
        try {
            Intent a2 = l.a(this.f2597b, componentName);
            while (a2 != null) {
                this.f2596a.add(size, a2);
                a2 = l.a(this.f2597b, a2.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e2);
        }
    }

    public int a() {
        return this.f2596a.size();
    }

    public Intent a(int i2) {
        return this.f2596a.get(i2);
    }

    public void a(Bundle bundle) {
        if (!this.f2596a.isEmpty()) {
            ArrayList<Intent> arrayList = this.f2596a;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            if (!b.i.b.a.a(this.f2597b, intentArr, bundle)) {
                Intent intent = new Intent(intentArr[intentArr.length - 1]);
                intent.addFlags(268435456);
                this.f2597b.startActivity(intent);
                return;
            }
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }
}
