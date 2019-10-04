package c.e.a.b.d.d;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.common.api.Status;

/* renamed from: c.e.a.b.d.d.b  reason: case insensitive filesystem */
public class C0779b {
    public static ApiException a(Status status) {
        if (status.z()) {
            return new ResolvableApiException(status);
        }
        return new ApiException(status);
    }
}
