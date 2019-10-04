package cab.snapp.arch.protocol;

import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import cab.snapp.passenger.play.R;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseArchActivity extends FragmentActivity {

    /* renamed from: a  reason: collision with root package name */
    List<a> f170a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f171b = false;

    public NavController getOverTheMapNavController() {
        return null;
    }

    public void onResume() {
        super.onResume();
        this.f171b = true;
    }

    public void onStart() {
        super.onStart();
        this.f171b = true;
    }

    public void onPause() {
        super.onPause();
        this.f171b = false;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f171b = true;
        this.f170a = new ArrayList();
    }

    public synchronized void addBackPressedListener(a aVar) {
        if (this.f170a != null) {
            this.f170a.add(aVar);
        }
    }

    public synchronized void removeBackPressedListener(a aVar) {
        if (this.f170a != null) {
            this.f170a.remove(aVar);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x003e, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void onBackPressed() {
        /*
            r2 = this;
            monitor-enter(r2)
            java.util.List<cab.snapp.arch.protocol.a> r0 = r2.f170a     // Catch:{ Exception -> 0x0041 }
            if (r0 == 0) goto L_0x003a
            java.util.List<cab.snapp.arch.protocol.a> r0 = r2.f170a     // Catch:{ Exception -> 0x0041 }
            int r0 = r0.size()     // Catch:{ Exception -> 0x0041 }
            if (r0 <= 0) goto L_0x0025
            java.util.List<cab.snapp.arch.protocol.a> r0 = r2.f170a     // Catch:{ Exception -> 0x0041 }
            java.util.Iterator r0 = r0.iterator()     // Catch:{ Exception -> 0x0041 }
        L_0x0013:
            boolean r1 = r0.hasNext()     // Catch:{ Exception -> 0x0041 }
            if (r1 == 0) goto L_0x0023
            java.lang.Object r1 = r0.next()     // Catch:{ Exception -> 0x0041 }
            cab.snapp.arch.protocol.a r1 = (cab.snapp.arch.protocol.a) r1     // Catch:{ Exception -> 0x0041 }
            r1.onApplicationRootBackPressed()     // Catch:{ Exception -> 0x0041 }
            goto L_0x0013
        L_0x0023:
            monitor-exit(r2)
            return
        L_0x0025:
            androidx.navigation.NavController r0 = r2.getNavigationController()     // Catch:{ Exception -> 0x0041 }
            if (r0 == 0) goto L_0x003d
            androidx.navigation.NavController r0 = r2.getNavigationController()     // Catch:{ Exception -> 0x0041 }
            boolean r0 = r0.navigateUp()     // Catch:{ Exception -> 0x0041 }
            if (r0 != 0) goto L_0x003d
            super.onBackPressed()     // Catch:{ Exception -> 0x0041 }
            monitor-exit(r2)
            return
        L_0x003a:
            super.onBackPressed()     // Catch:{ Exception -> 0x0041 }
        L_0x003d:
            monitor-exit(r2)
            return
        L_0x003f:
            r0 = move-exception
            goto L_0x0047
        L_0x0041:
            r0 = move-exception
            r0.printStackTrace()     // Catch:{ all -> 0x003f }
            monitor-exit(r2)
            return
        L_0x0047:
            monitor-exit(r2)
            goto L_0x004a
        L_0x0049:
            throw r0
        L_0x004a:
            goto L_0x0049
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.arch.protocol.BaseArchActivity.onBackPressed():void");
    }

    public NavController getNavigationController() {
        return Navigation.findNavController(this, R.id.activity_root_controller_container);
    }

    public void removeAllBackPressListener() {
        List<a> list = this.f170a;
        if (list != null) {
            list.clear();
        }
    }

    public boolean isVisible() {
        return this.f171b;
    }
}
