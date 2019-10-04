package com.webengage.sdk.android.actions.b;

import android.content.Context;
import com.google.android.gms.common.b;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.webengage.sdk.android.Logger;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.actions.exception.GCMRegistrationException;
import com.webengage.sdk.android.k;
import com.webengage.sdk.android.utils.h;
import java.util.HashMap;
import java.util.Map;

class a extends com.webengage.sdk.android.a {

    /* renamed from: b  reason: collision with root package name */
    private Context f5338b = null;

    protected a(Context context) {
        super(context);
        this.f5338b = context.getApplicationContext();
    }

    public Object a(Object obj) {
        String str;
        if (obj == null) {
            return null;
        }
        if (!h.a()) {
            Logger.e("WebEngage", "GoogleCloudMessaging class not found");
            return null;
        }
        int isGooglePlayServicesAvailable = b.getInstance().isGooglePlayServicesAvailable(this.f5338b);
        if (isGooglePlayServicesAvailable == 0 || isGooglePlayServicesAvailable == 2) {
            if (isGooglePlayServicesAvailable == 2) {
                Logger.w("WebEngage", "Please update your google play service");
                d(new GCMRegistrationException("Google play service update required"));
            }
            try {
                String register = GoogleCloudMessaging.getInstance(this.f5338b).register(new String[]{(String) obj});
                if (register == null || register.isEmpty() || c().equals(register)) {
                    return null;
                }
                f(register);
                return register;
            } catch (Exception e) {
                return e;
            }
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("Google play services ");
            if (isGooglePlayServicesAvailable == 1) {
                str = "is missing ";
            } else if (isGooglePlayServicesAvailable == 3) {
                str = "is disabled ";
            } else if (isGooglePlayServicesAvailable != 9) {
                if (isGooglePlayServicesAvailable == 18) {
                    str = "is currently updating ";
                }
                sb.append("on this device");
                Logger.e("WebEngage", sb.toString());
                d(new GCMRegistrationException(sb.toString()));
                return null;
            } else {
                str = "version is invalid ";
            }
            sb.append(str);
            sb.append("on this device");
            Logger.e("WebEngage", sb.toString());
            d(new GCMRegistrationException(sb.toString()));
            return null;
        }
    }

    public Object a(Map<String, Object> map) {
        String gcmProjectNumber = WebEngage.get().getWebEngageConfig().getGcmProjectNumber();
        if (gcmProjectNumber != null) {
            return gcmProjectNumber;
        }
        Logger.e("WebEngage", "AndroidManifest : GCM Project Number is not set,unable to register");
        return null;
    }

    public void b(Object obj) {
        if (obj != null) {
            if (obj instanceof String) {
                String str = (String) obj;
                HashMap hashMap = new HashMap();
                hashMap.put("gcm_regId", str);
                hashMap.put("gcm_project_number", WebEngage.get().getWebEngageConfig().getGcmProjectNumber());
                c((Object) k.a("gcm_registered", null, hashMap, null, this.f5338b));
                a(this.f5338b).onGCMRegistered(this.f5338b, str);
            } else if (obj instanceof Exception) {
                StringBuilder sb = new StringBuilder("GCM Register Error : ");
                Exception exc = (Exception) obj;
                sb.append(exc.getMessage());
                Logger.e("WebEngage", sb.toString());
                d(new GCMRegistrationException(exc.getMessage()));
            }
        }
        b.f5339a.set(false);
    }
}
