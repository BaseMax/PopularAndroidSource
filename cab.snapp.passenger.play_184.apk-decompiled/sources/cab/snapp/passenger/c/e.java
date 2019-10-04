package cab.snapp.passenger.c;

import android.app.Activity;
import android.content.Context;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.Looper;
import androidx.core.app.ActivityCompat;
import cab.snapp.b.a;
import cab.snapp.c.g;
import cab.snapp.passenger.data.models.NullLocation;
import com.google.android.gms.c.c;
import com.google.android.gms.c.d;
import com.google.android.gms.c.f;
import com.google.android.gms.common.api.k;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.b;
import com.google.android.gms.location.g;
import com.google.android.gms.location.i;
import com.google.android.gms.location.j;
import com.google.android.gms.location.m;
import io.reactivex.z;
import java.util.ArrayList;
import javax.inject.Inject;

public final class e {
    /* access modifiers changed from: private */
    public static String t = "LOCATION_PERMISSION_DENIED";

    /* renamed from: a  reason: collision with root package name */
    private final double f457a = 35.670010667d;

    /* renamed from: b  reason: collision with root package name */
    private final double f458b = 51.383363521d;
    private Context c;
    /* access modifiers changed from: private */
    public Activity d;
    private a e;
    /* access modifiers changed from: private */
    public b f;
    private m g;
    private LocationRequest h;
    private LocationSettingsRequest i;
    private g j;
    private Location k;
    private Location l;
    private Location m = new Location("gps");
    /* access modifiers changed from: private */
    public io.reactivex.j.b<Location> n = io.reactivex.j.b.create();
    private long o = 10000;
    private long p = (this.o / 2);
    private boolean q = false;
    private boolean r = true;
    private int s;

    @Inject
    public e(Context context) {
        this.c = context;
        this.m.setLatitude(35.670010667d);
        this.m.setLongitude(51.383363521d);
        f();
        if (this.k == null) {
            a(this.m);
        }
        Context context2 = this.c;
        if (context2 != null) {
            this.e = new a(context2);
            this.f = i.getFusedLocationProviderClient(this.c);
            this.g = i.getSettingsClient(this.c);
            this.j = new g() {
                public final void onLocationResult(LocationResult locationResult) {
                    super.onLocationResult(locationResult);
                    if (locationResult != null && locationResult.getLastLocation() != null) {
                        e.this.n.onNext(locationResult.getLastLocation());
                        e.this.a(locationResult.getLastLocation());
                    }
                }
            };
            this.h = new LocationRequest();
            this.h.setInterval(this.o);
            this.h.setFastestInterval(this.p);
            this.h.setPriority(100);
            LocationSettingsRequest.a aVar = new LocationSettingsRequest.a();
            aVar.addLocationRequest(this.h);
            this.i = aVar.build();
            d();
            f();
            b();
            return;
        }
        throw new NullPointerException("Context can not be null!");
    }

    public final void setCurrentActivity(Activity activity) {
        this.d = activity;
    }

    public final void setUpdateInterval(long j2) {
        this.o = j2;
    }

    public final void setFastestUpdateInterval(long j2) {
        this.p = j2;
    }

    public final boolean isLocationEnabled() {
        return this.r;
    }

    /* access modifiers changed from: private */
    public void a(Location location) {
        this.k = location;
        if (location == null) {
            return;
        }
        if (location.getLatitude() != 0.0d || location.getLongitude() != 0.0d) {
            this.l = this.k;
        }
    }

    public final z<Location> getLocationUpdates() {
        if (!this.q && this.c != null) {
            if (e()) {
                c();
            } else {
                a(true);
            }
        }
        return this.n;
    }

    public final Location getLocation() {
        return this.k;
    }

    public final Location getSavedLocation() {
        return this.l;
    }

    public final z<Location> getLocationObservable(boolean z) {
        refreshLocation(z);
        return this.n;
    }

    public final void refreshLocation(boolean z) {
        if (e()) {
            b();
            return;
        }
        if (z) {
            a(false);
        }
    }

    /* access modifiers changed from: private */
    public void b() {
        if (e()) {
            d();
            this.g.checkLocationSettings(this.i).addOnSuccessListener(new d() {
                public final void onSuccess(Object obj) {
                    e.this.b((j) obj);
                }
            }).addOnFailureListener(new c() {
                public final void onFailure(Exception exc) {
                    e.this.b(exc);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(j jVar) {
        b bVar = this.f;
        if (bVar != null) {
            bVar.getLastLocation().addOnCompleteListener(new com.google.android.gms.c.b() {
                public final void onComplete(f fVar) {
                    e.this.a(fVar);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(f fVar) {
        if (!fVar.isSuccessful() || fVar.getResult() == null) {
            b bVar = this.f;
            if (bVar != null) {
                bVar.requestLocationUpdates(this.h, new g() {
                    public final void onLocationResult(LocationResult locationResult) {
                        super.onLocationResult(locationResult);
                        if (locationResult != null) {
                            e.this.n.onNext(locationResult.getLastLocation());
                            e.this.a(locationResult.getLastLocation());
                            if (e.this.f != null) {
                                e.this.f.removeLocationUpdates((g) this);
                            }
                        }
                    }
                }, Looper.myLooper());
                return;
            }
            this.n.onNext(new NullLocation("gps"));
            a((Location) null);
            return;
        }
        this.n.onNext(fVar.getResult());
        a((Location) fVar.getResult());
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(Exception exc) {
        this.r = false;
        if (exc instanceof k) {
            this.n.onNext(new NullLocation("gps", (k) exc));
        } else {
            this.n.onNext(new NullLocation("gps"));
        }
        a((Location) null);
    }

    public final void requestEditLocationSetting(k kVar, int i2) {
        if (kVar != null) {
            Activity activity = this.d;
            if (activity != null && !activity.isFinishing()) {
                try {
                    kVar.startResolutionForResult(this.d, i2);
                } catch (IntentSender.SendIntentException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void c() {
        if (e()) {
            d();
            this.g.checkLocationSettings(this.i).addOnSuccessListener(new d() {
                public final void onSuccess(Object obj) {
                    e.this.a((j) obj);
                }
            }).addOnFailureListener(new c() {
                public final void onFailure(Exception exc) {
                    e.this.a(exc);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(j jVar) {
        b bVar = this.f;
        if (bVar != null) {
            bVar.requestLocationUpdates(this.h, this.j, Looper.myLooper());
            this.q = true;
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Exception exc) {
        this.q = false;
        this.r = false;
        this.n.onNext(new NullLocation("gps"));
        a((Location) null);
    }

    public final void cancelLocationUpdates() {
        b bVar = this.f;
        if (bVar != null) {
            bVar.removeLocationUpdates(this.j);
            this.q = false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x002a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void d() {
        /*
            r4 = this;
            android.content.Context r0 = r4.c
            if (r0 != 0) goto L_0x0005
            return
        L_0x0005:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 19
            r2 = 1
            if (r0 < r1) goto L_0x002e
            r0 = 0
            android.content.Context r1 = r4.c     // Catch:{ SettingNotFoundException -> 0x001e }
            android.content.ContentResolver r1 = r1.getContentResolver()     // Catch:{ SettingNotFoundException -> 0x001e }
            java.lang.String r3 = "location_mode"
            int r1 = android.provider.Settings.Secure.getInt(r1, r3)     // Catch:{ SettingNotFoundException -> 0x001e }
            r4.s = r1     // Catch:{ SettingNotFoundException -> 0x001c }
            goto L_0x0028
        L_0x001c:
            r3 = move-exception
            goto L_0x0020
        L_0x001e:
            r3 = move-exception
            r1 = 0
        L_0x0020:
            r3.printStackTrace()
            com.a.a.a.logException(r3)
            r4.r = r0
        L_0x0028:
            if (r1 == 0) goto L_0x002b
            r0 = 1
        L_0x002b:
            r4.r = r0
            return
        L_0x002e:
            android.content.Context r0 = r4.c
            android.content.ContentResolver r0 = r0.getContentResolver()
            java.lang.String r1 = "location_providers_allowed"
            java.lang.String r0 = android.provider.Settings.Secure.getString(r0, r1)
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r0 = r0 ^ r2
            r4.r = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.passenger.c.e.d():void");
    }

    private boolean e() {
        Context context = this.c;
        if (context == null) {
            return false;
        }
        return cab.snapp.c.g.isLocationPermissionGranted(context);
    }

    private void a(final boolean z) {
        Activity activity = this.d;
        if (activity != null && !activity.isFinishing()) {
            cab.snapp.c.g.getPermission(this.d, cab.snapp.c.g.getLocationPermissionStringArray(), new g.a() {
                public final void onPermissionGranted() {
                    SharedPreferences.Editor edit = e.this.d.getSharedPreferences(e.t, 0).edit();
                    edit.putBoolean("HAS_PERMANENTLY_DENIED_LOCATION_REQUEST", false);
                    edit.apply();
                    if (z) {
                        e.this.c();
                    } else {
                        e.this.b();
                    }
                }

                public final void onPermissionDenied(ArrayList<String> arrayList) {
                    boolean shouldShowRequestPermissionRationale = ActivityCompat.shouldShowRequestPermissionRationale(e.this.d, "android.permission.ACCESS_FINE_LOCATION");
                    if (e.e(e.this)) {
                        e.this.n.onNext(new NullLocation("gps", true, true));
                    } else if (!shouldShowRequestPermissionRationale) {
                        SharedPreferences.Editor edit = e.this.d.getSharedPreferences(e.t, 0).edit();
                        edit.putBoolean("HAS_PERMANENTLY_DENIED_LOCATION_REQUEST", true);
                        edit.apply();
                        e.this.n.onNext(new NullLocation("gps", true));
                    } else {
                        e.this.n.onNext(new NullLocation("gps", true));
                    }
                }
            }, new String[0]);
        }
    }

    private void f() {
        a aVar = this.e;
        if (aVar != null && aVar.containsKey("Location_Data_Manager_Key_Saved_Location")) {
            a((Location) this.e.get("Location_Data_Manager_Key_Saved_Location"));
        }
    }

    public final void saveLocation(Location location) {
        a aVar = this.e;
        if (aVar != null) {
            aVar.put("Location_Data_Manager_Key_Saved_Location", location);
        }
    }

    public final void saveLocation(double d2, double d3) {
        if (d2 != 0.0d || d3 != 0.0d) {
            Location location = new Location("");
            location.setLatitude(d2);
            location.setLongitude(d3);
            saveLocation(location);
        }
    }

    public final boolean isLocationModeBatterySavingOrPhoneOnly() {
        int i2 = this.s;
        return i2 == 2 || i2 == 1;
    }

    static /* synthetic */ boolean e(e eVar) {
        SharedPreferences sharedPreferences = eVar.d.getSharedPreferences(t, 0);
        if (!sharedPreferences.contains("HAS_PERMANENTLY_DENIED_LOCATION_REQUEST") || !sharedPreferences.getBoolean("HAS_PERMANENTLY_DENIED_LOCATION_REQUEST", false)) {
            return false;
        }
        return true;
    }
}
