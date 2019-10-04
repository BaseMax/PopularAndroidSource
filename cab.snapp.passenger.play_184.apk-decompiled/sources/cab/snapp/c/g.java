package cab.snapp.c;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import androidx.core.content.ContextCompat;
import com.karumi.dexter.Dexter;
import com.karumi.dexter.MultiplePermissionsReport;
import com.karumi.dexter.PermissionToken;
import com.karumi.dexter.listener.PermissionDeniedResponse;
import com.karumi.dexter.listener.PermissionRequest;
import com.karumi.dexter.listener.multi.BaseMultiplePermissionsListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class g {

    public interface a {
        void onPermissionDenied(ArrayList<String> arrayList);

        void onPermissionGranted();
    }

    public static String[] getLocationPermissionStringArray() {
        return new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"};
    }

    public static void getPermission(Activity activity, String[] strArr, final a aVar, String... strArr2) {
        if (Build.VERSION.SDK_INT < 23) {
            if (aVar != null) {
                aVar.onPermissionGranted();
            }
        } else if (activity == null) {
            if (aVar != null) {
                aVar.onPermissionDenied((ArrayList) Arrays.asList(strArr));
            }
        } else {
            if (strArr2.length > 0 && strArr2[0] != null) {
                strArr2[0].isEmpty();
            }
            Dexter.withActivity(activity).withPermissions(strArr).withListener(new BaseMultiplePermissionsListener() {
                public final void onPermissionsChecked(MultiplePermissionsReport multiplePermissionsReport) {
                    super.onPermissionsChecked(multiplePermissionsReport);
                    if (aVar != null) {
                        if (multiplePermissionsReport.areAllPermissionsGranted()) {
                            aVar.onPermissionGranted();
                            return;
                        }
                        List<PermissionDeniedResponse> deniedPermissionResponses = multiplePermissionsReport.getDeniedPermissionResponses();
                        ArrayList arrayList = new ArrayList();
                        for (PermissionDeniedResponse permissionName : deniedPermissionResponses) {
                            arrayList.add(permissionName.getPermissionName());
                        }
                        aVar.onPermissionDenied(arrayList);
                    }
                }

                public final void onPermissionRationaleShouldBeShown(List<PermissionRequest> list, PermissionToken permissionToken) {
                    super.onPermissionRationaleShouldBeShown(list, permissionToken);
                }
            }).check();
        }
    }

    public static boolean isLocationPermissionGranted(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context != null && ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION") == 0 && ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_COARSE_LOCATION") == 0;
        }
        return true;
    }

    public static boolean isPermissionGranted(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context != null && ContextCompat.checkSelfPermission(context, str) == 0;
        }
        return true;
    }
}
