package cab.snapp.passenger.data.models;

import android.location.Location;
import com.google.android.gms.common.api.k;

public class NullLocation extends Location {
    private boolean becauseDenyPermission;
    private k locationSettingException = null;
    private boolean permanentlyDeniedPermission;

    public NullLocation(String str) {
        super(str);
    }

    public NullLocation(String str, k kVar) {
        super(str);
        this.locationSettingException = kVar;
    }

    public NullLocation(String str, boolean z) {
        super(str);
        this.becauseDenyPermission = z;
    }

    public NullLocation(String str, boolean z, boolean z2) {
        super(str);
        this.becauseDenyPermission = z;
        this.permanentlyDeniedPermission = z2;
    }

    public boolean isBecauseDenyPermission() {
        return this.becauseDenyPermission;
    }

    public boolean isPermanentlyDeniedPermission() {
        return this.permanentlyDeniedPermission;
    }

    public k getLocationSettingException() {
        return this.locationSettingException;
    }
}
