package c.e.a.b.d.d;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import androidx.fragment.app.Fragment;
import c.e.a.b.d.a.a.C0758f;

/* renamed from: c.e.a.b.d.d.g  reason: case insensitive filesystem */
public abstract class C0784g implements DialogInterface.OnClickListener {
    public static C0784g a(Activity activity, Intent intent, int i2) {
        return new w(intent, activity, i2);
    }

    public abstract void a();

    public void onClick(DialogInterface dialogInterface, int i2) {
        try {
            a();
        } catch (ActivityNotFoundException e2) {
            Log.e("DialogRedirect", "Failed to start resolution intent", e2);
        } finally {
            dialogInterface.dismiss();
        }
    }

    public static C0784g a(Fragment fragment, Intent intent, int i2) {
        return new x(intent, fragment, i2);
    }

    public static C0784g a(C0758f fVar, Intent intent, int i2) {
        return new y(intent, fVar, i2);
    }
}
