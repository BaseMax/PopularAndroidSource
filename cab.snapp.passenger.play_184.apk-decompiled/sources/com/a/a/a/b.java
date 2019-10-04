package com.a.a.a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.i;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.j;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.s;
import java.io.File;

public class b extends i<Boolean> {
    public static final String TAG = "Answers";

    /* renamed from: a  reason: collision with root package name */
    ae f1667a;

    public String getIdentifier() {
        return "com.crashlytics.sdk.android:answers";
    }

    public String getVersion() {
        return "1.3.13.dev";
    }

    public static b getInstance() {
        return (b) c.getKit(b.class);
    }

    public void logCustom(m mVar) {
        if (mVar != null) {
            ae aeVar = this.f1667a;
            if (aeVar != null) {
                aeVar.onCustom(mVar);
                return;
            }
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logPurchase(w wVar) {
        if (wVar != null) {
            ae aeVar = this.f1667a;
            if (aeVar != null) {
                aeVar.onPredefined(wVar);
                return;
            }
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logLogin(u uVar) {
        if (uVar != null) {
            ae aeVar = this.f1667a;
            if (aeVar != null) {
                aeVar.onPredefined(uVar);
                return;
            }
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logShare(ak akVar) {
        if (akVar != null) {
            ae aeVar = this.f1667a;
            if (aeVar != null) {
                aeVar.onPredefined(akVar);
                return;
            }
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logInvite(q qVar) {
        if (qVar != null) {
            ae aeVar = this.f1667a;
            if (aeVar != null) {
                aeVar.onPredefined(qVar);
                return;
            }
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logSignUp(al alVar) {
        if (alVar != null) {
            ae aeVar = this.f1667a;
            if (aeVar != null) {
                aeVar.onPredefined(alVar);
                return;
            }
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logLevelStart(t tVar) {
        if (tVar != null) {
            ae aeVar = this.f1667a;
            if (aeVar != null) {
                aeVar.onPredefined(tVar);
                return;
            }
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logLevelEnd(s sVar) {
        if (sVar != null) {
            ae aeVar = this.f1667a;
            if (aeVar != null) {
                aeVar.onPredefined(sVar);
                return;
            }
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logAddToCart(a aVar) {
        if (aVar != null) {
            ae aeVar = this.f1667a;
            if (aeVar != null) {
                aeVar.onPredefined(aVar);
                return;
            }
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logStartCheckout(am amVar) {
        if (amVar != null) {
            ae aeVar = this.f1667a;
            if (aeVar != null) {
                aeVar.onPredefined(amVar);
                return;
            }
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logRating(y yVar) {
        if (yVar != null) {
            ae aeVar = this.f1667a;
            if (aeVar != null) {
                aeVar.onPredefined(yVar);
                return;
            }
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logContentView(l lVar) {
        if (lVar != null) {
            ae aeVar = this.f1667a;
            if (aeVar != null) {
                aeVar.onPredefined(lVar);
                return;
            }
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logSearch(ab abVar) {
        if (abVar != null) {
            ae aeVar = this.f1667a;
            if (aeVar != null) {
                aeVar.onPredefined(abVar);
                return;
            }
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void onException(j.b bVar) {
        ae aeVar = this.f1667a;
        if (aeVar != null) {
            aeVar.onError(bVar.getSessionId());
        }
    }

    public void onException(j.a aVar) {
        ae aeVar = this.f1667a;
        if (aeVar != null) {
            aeVar.onCrash(aVar.getSessionId(), aVar.getExceptionName());
        }
    }

    public final boolean onPreExecute() {
        long lastModified;
        try {
            Context context = getContext();
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            String num = Integer.toString(packageInfo.versionCode);
            String str = packageInfo.versionName == null ? IdManager.DEFAULT_VERSION_NAME : packageInfo.versionName;
            if (Build.VERSION.SDK_INT >= 9) {
                lastModified = packageInfo.firstInstallTime;
            } else {
                lastModified = new File(packageManager.getApplicationInfo(packageName, 0).sourceDir).lastModified();
            }
            this.f1667a = ae.build(this, context, this.g, num, str, lastModified);
            this.f1667a.enable();
            return true;
        } catch (Exception e) {
            c.getLogger().e(TAG, "Error retrieving app properties", e);
            return false;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: a */
    public Boolean doInBackground() {
        try {
            s awaitSettingsData = q.getInstance().awaitSettingsData();
            if (awaitSettingsData == null) {
                c.getLogger().e(TAG, "Failed to retrieve settings");
                return Boolean.FALSE;
            } else if (awaitSettingsData.featuresData.collectAnalytics) {
                c.getLogger().d(TAG, "Analytics collection enabled");
                this.f1667a.setAnalyticsSettingsData(awaitSettingsData.analyticsSettingsData, io.fabric.sdk.android.services.common.i.getStringsFileValue(getContext(), "com.crashlytics.ApiEndpoint"));
                return Boolean.TRUE;
            } else {
                c.getLogger().d(TAG, "Analytics collection disabled");
                this.f1667a.disable();
                return Boolean.FALSE;
            }
        } catch (Exception e) {
            c.getLogger().e(TAG, "Error dealing with settings", e);
            return Boolean.FALSE;
        }
    }
}
