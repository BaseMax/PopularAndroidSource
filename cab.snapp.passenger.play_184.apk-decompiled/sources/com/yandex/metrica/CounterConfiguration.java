package com.yandex.metrica;

import android.content.ContentValues;
import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.text.TextUtils;
import androidx.appcompat.widget.ActivityChooserView;
import com.yandex.metrica.impl.bt;
import com.yandex.metrica.impl.ob.hw;

@Deprecated
public class CounterConfiguration implements Parcelable {
    public static final Parcelable.Creator<CounterConfiguration> CREATOR = new Parcelable.Creator<CounterConfiguration>() {
        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new CounterConfiguration[i];
        }

        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new CounterConfiguration((ContentValues) parcel.readParcelable(ContentValues.class.getClass().getClassLoader()), (ResultReceiver) parcel.readParcelable(ResultReceiver.class.getClass().getClassLoader()), (byte) 0);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final ContentValues f5615a;

    /* renamed from: b  reason: collision with root package name */
    private ResultReceiver f5616b;

    public enum a {
        UNDEFINED(-1),
        FALSE(0),
        TRUE(1);
        
        public final int d;

        private a(int i) {
            this.d = i;
        }

        public static a a(int i) {
            if (i == -1) {
                return UNDEFINED;
            }
            if (i == 0) {
                return FALSE;
            }
            if (i != 1) {
                return UNDEFINED;
            }
            return TRUE;
        }
    }

    public int describeContents() {
        return 0;
    }

    /* synthetic */ CounterConfiguration(ContentValues contentValues, ResultReceiver resultReceiver, byte b2) {
        this(contentValues, resultReceiver);
    }

    public String toString() {
        return "CounterConfiguration{mParamsMapping=" + this.f5615a + '}';
    }

    private CounterConfiguration(ContentValues contentValues, ResultReceiver resultReceiver) {
        this.f5616b = null;
        this.f5615a = contentValues;
        this.f5616b = resultReceiver;
    }

    public CounterConfiguration() {
        this.f5616b = null;
        this.f5615a = new ContentValues();
    }

    public CounterConfiguration(e eVar) {
        this();
        c(eVar.apiKey);
        a(eVar.sessionTimeout);
        boolean z = true;
        if (eVar.location != null) {
            a(eVar.location);
        }
        if (eVar.locationTracking != null) {
            a(eVar.locationTracking.booleanValue());
        }
        if (eVar.installedAppCollecting != null) {
            b(eVar.installedAppCollecting.booleanValue());
        }
        if (eVar.f5648a != null) {
            this.f5615a.put("CFG_DEVICE_SIZE_TYPE", TextUtils.isEmpty(eVar.f5648a) ? null : eVar.f5648a);
        }
        b(eVar.f);
        c(eVar.g);
        if (!bt.a(eVar.appVersion)) {
            this.f5615a.put("CFG_APP_VERSION", eVar.appVersion);
        }
        if (eVar.e != null) {
            d(eVar.e.intValue());
        }
        if (eVar.j != null) {
            d(eVar.j.booleanValue());
        }
        if (eVar.k != null) {
            e(eVar.k.booleanValue());
        }
        if (eVar.firstActivationAsUpdate == null ? false : z) {
            this.f5615a.put("CFG_IS_FIRST_ACTIVATION_AS_UPDATE", Boolean.valueOf(eVar.firstActivationAsUpdate.booleanValue()));
        }
        a(eVar.statisticsSending);
    }

    public CounterConfiguration(c cVar) {
        this();
        c(cVar.apiKey);
        a(cVar.sessionTimeout);
        b(cVar.f5642a);
        c(cVar.f5643b);
        Boolean bool = cVar.logs;
        if (bool != null) {
            c(bool.booleanValue());
        }
        a(cVar.statisticsSending);
    }

    private void c(String str) {
        if (str != null) {
            a(str);
        }
    }

    private void a(Integer num) {
        if (num != null) {
            c(num.intValue());
        }
    }

    private void b(Integer num) {
        if (num != null) {
            a(num.intValue());
        }
    }

    private void c(Integer num) {
        if (num != null) {
            b(num.intValue());
        }
    }

    private void a(Boolean bool) {
        if (bool != null) {
            f(bool.booleanValue());
        }
    }

    public void a(ResultReceiver resultReceiver) {
        this.f5616b = resultReceiver;
    }

    public ResultReceiver a() {
        return this.f5616b;
    }

    public void a(int i) {
        this.f5615a.put("CFG_DISPATCH_PERIOD", Integer.valueOf(i));
    }

    public Integer b() {
        return this.f5615a.getAsInteger("CFG_DISPATCH_PERIOD");
    }

    public void b(int i) {
        ContentValues contentValues = this.f5615a;
        if (i <= 0) {
            i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        contentValues.put("CFG_MAX_REPORTS_COUNT", Integer.valueOf(i));
    }

    public Integer c() {
        return this.f5615a.getAsInteger("CFG_MAX_REPORTS_COUNT");
    }

    public void c(int i) {
        this.f5615a.put("CFG_SESSION_TIMEOUT", Integer.valueOf(i));
    }

    public Integer d() {
        return this.f5615a.getAsInteger("CFG_SESSION_TIMEOUT");
    }

    public String e() {
        return this.f5615a.getAsString("CFG_DEVICE_SIZE_TYPE");
    }

    public void a(String str) {
        this.f5615a.put("CFG_API_KEY", str);
    }

    public void b(String str) {
        this.f5615a.put("CFG_UUID", str);
    }

    public String f() {
        return this.f5615a.getAsString("CFG_API_KEY");
    }

    public void a(boolean z) {
        this.f5615a.put("CFG_LOCATION_TRACKING", Boolean.valueOf(z));
    }

    public Boolean g() {
        return this.f5615a.getAsBoolean("CFG_LOCATION_TRACKING");
    }

    public String h() {
        return this.f5615a.getAsString("CFG_APP_VERSION");
    }

    public void d(int i) {
        this.f5615a.put("CFG_APP_VERSION_CODE", String.valueOf(i));
    }

    public String i() {
        return this.f5615a.getAsString("CFG_APP_VERSION_CODE");
    }

    public void b(boolean z) {
        this.f5615a.put("CFG_COLLECT_INSTALLED_APPS", Integer.valueOf((z ? a.TRUE : a.FALSE).d));
    }

    public a j() {
        Object obj = this.f5615a.get("CFG_COLLECT_INSTALLED_APPS");
        if (obj != null) {
            if (obj instanceof Integer) {
                return a.a(((Integer) obj).intValue());
            }
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue() ? a.TRUE : a.FALSE;
            }
        }
        return a.UNDEFINED;
    }

    public final void a(Location location) {
        this.f5615a.put("CFG_MANUAL_LOCATION", hw.a(location));
    }

    public void c(boolean z) {
        this.f5615a.put("CFG_IS_LOG_ENABLED", Boolean.valueOf(z));
    }

    public Boolean k() {
        return this.f5615a.getAsBoolean("CFG_IS_LOG_ENABLED");
    }

    public Location l() {
        if (this.f5615a.containsKey("CFG_MANUAL_LOCATION")) {
            return hw.a(this.f5615a.getAsByteArray("CFG_MANUAL_LOCATION"));
        }
        return null;
    }

    public Boolean m() {
        return this.f5615a.getAsBoolean("CFG_AUTO_PRELOAD_INFO_DETECTION");
    }

    public void d(boolean z) {
        this.f5615a.put("CFG_AUTO_PRELOAD_INFO_DETECTION", Boolean.valueOf(z));
    }

    public void e(boolean z) {
        this.f5615a.put("CFG_PERMISSIONS_COLLECTING", Boolean.valueOf(z));
    }

    public Boolean n() {
        return this.f5615a.getAsBoolean("CFG_IS_FIRST_ACTIVATION_AS_UPDATE");
    }

    public Boolean o() {
        return this.f5615a.getAsBoolean("CFG_STATISTICS_SENDING");
    }

    public final void f(boolean z) {
        this.f5615a.put("CFG_STATISTICS_SENDING", Boolean.valueOf(z));
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f5615a, 0);
        ResultReceiver resultReceiver = this.f5616b;
        Parcel obtain = Parcel.obtain();
        resultReceiver.writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        obtain.recycle();
        parcel.writeParcelable((ResultReceiver) ResultReceiver.CREATOR.createFromParcel(obtain), 0);
    }

    public void g(boolean z) {
        h(z);
    }

    private void h(boolean z) {
        this.f5615a.put("CFG_MAIN_REPORTER", Boolean.valueOf(z));
    }

    public boolean q() {
        return a("CFG_MAIN_REPORTER", true);
    }

    public boolean r() {
        return a("CFG_COMMUTATION_REPORTER", false);
    }

    public void a(Bundle bundle) {
        bundle.putParcelable("COUNTER_CFG_OBJ", this);
    }

    public void b(Bundle bundle) {
        if (bundle != null) {
            if (bundle.getInt("CFG_DISPATCH_PERIOD") != 0) {
                a(bundle.getInt("CFG_DISPATCH_PERIOD"));
            }
            if (bundle.getInt("CFG_SESSION_TIMEOUT") != 0) {
                c(bundle.getInt("CFG_SESSION_TIMEOUT"));
            }
            if (bundle.getInt("CFG_MAX_REPORTS_COUNT") != 0) {
                b(bundle.getInt("CFG_MAX_REPORTS_COUNT"));
            }
            if (bundle.getString("CFG_API_KEY") != null && !"-1".equals(bundle.getString("CFG_API_KEY"))) {
                a(bundle.getString("CFG_API_KEY"));
            }
        }
    }

    public static CounterConfiguration c(Bundle bundle) {
        CounterConfiguration counterConfiguration = null;
        if (bundle != null) {
            try {
                counterConfiguration = (CounterConfiguration) bundle.getParcelable("COUNTER_CFG_OBJ");
            } catch (Throwable unused) {
                return null;
            }
        }
        if (counterConfiguration == null) {
            counterConfiguration = new CounterConfiguration();
        }
        counterConfiguration.b(bundle);
        return counterConfiguration;
    }

    private boolean a(String str, boolean z) {
        Boolean asBoolean = this.f5615a.getAsBoolean(str);
        if (asBoolean == null) {
            return z;
        }
        return asBoolean.booleanValue();
    }

    public void p() {
        this.f5615a.put("CFG_COMMUTATION_REPORTER", Boolean.TRUE);
        h(false);
    }
}
