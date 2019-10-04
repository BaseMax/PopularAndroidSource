package b.r;

import android.app.Activity;
import android.app.Application;
import androidx.fragment.app.Fragment;
import b.o.a.C0285i;
import b.r.F;

/* compiled from: ViewModelProviders */
public class G {
    public static Application a(Activity activity) {
        Application application = activity.getApplication();
        if (application != null) {
            return application;
        }
        throw new IllegalStateException("Your activity/fragment is not yet attached to Application. You can't request ViewModel before onCreate call.");
    }

    public static Activity a(Fragment fragment) {
        C0285i x = fragment.x();
        if (x != null) {
            return x;
        }
        throw new IllegalStateException("Can't create ViewModelProvider for detached fragment");
    }

    public static F a(Fragment fragment, F.b bVar) {
        Application a2 = a(a(fragment));
        if (bVar == null) {
            bVar = F.a.a(a2);
        }
        return new F(fragment.e(), bVar);
    }

    public static F a(C0285i iVar, F.b bVar) {
        Application a2 = a((Activity) iVar);
        if (bVar == null) {
            bVar = F.a.a(a2);
        }
        return new F(iVar.e(), bVar);
    }
}
