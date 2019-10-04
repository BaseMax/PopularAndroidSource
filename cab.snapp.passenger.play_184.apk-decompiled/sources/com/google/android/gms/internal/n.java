package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

public final class n extends x {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f3410a;

    /* renamed from: b  reason: collision with root package name */
    private AdvertisingIdClient.Info f3411b;
    private final ca c;
    private String d;
    private boolean e = false;
    private final Object f = new Object();

    n(z zVar) {
        super(zVar);
        this.c = new ca(zVar.zzws());
    }

    private final synchronized AdvertisingIdClient.Info a() {
        if (this.c.zzu(1000)) {
            this.c.start();
            AdvertisingIdClient.Info b2 = b();
            if (!a(this.f3411b, b2)) {
                zzdy("Failed to reset client id on adid change. Not using adid");
                b2 = new AdvertisingIdClient.Info("", false);
            }
            this.f3411b = b2;
        }
        return this.f3411b;
    }

    private static String a(String str) {
        MessageDigest zzek = ce.zzek("MD5");
        if (zzek == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new Object[]{new BigInteger(1, zzek.digest(str.getBytes()))});
    }

    /* access modifiers changed from: protected */
    public final void zzvf() {
    }

    public final boolean zzwb() {
        c();
        AdvertisingIdClient.Info a2 = a();
        return a2 != null && !a2.isLimitAdTrackingEnabled();
    }

    public final String zzwi() {
        c();
        AdvertisingIdClient.Info a2 = a();
        String id = a2 != null ? a2.getId() : null;
        if (TextUtils.isEmpty(id)) {
            return null;
        }
        return id;
    }

    private final boolean a(AdvertisingIdClient.Info info, AdvertisingIdClient.Info info2) {
        String str = null;
        String id = info2 == null ? null : info2.getId();
        if (TextUtils.isEmpty(id)) {
            return true;
        }
        String zzyk = this.zzdta.zzxl().zzyk();
        synchronized (this.f) {
            if (!this.e) {
                this.d = d();
                this.e = true;
            } else if (TextUtils.isEmpty(this.d)) {
                if (info != null) {
                    str = info.getId();
                }
                if (str == null) {
                    String valueOf = String.valueOf(id);
                    String valueOf2 = String.valueOf(zzyk);
                    boolean b2 = b(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
                    return b2;
                }
                String valueOf3 = String.valueOf(str);
                String valueOf4 = String.valueOf(zzyk);
                this.d = a(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3));
            }
            String valueOf5 = String.valueOf(id);
            String valueOf6 = String.valueOf(zzyk);
            String a2 = a(valueOf6.length() != 0 ? valueOf5.concat(valueOf6) : new String(valueOf5));
            if (TextUtils.isEmpty(a2)) {
                return false;
            }
            if (a2.equals(this.d)) {
                return true;
            }
            if (!TextUtils.isEmpty(this.d)) {
                zzdu("Resetting the client id because Advertising Id changed.");
                zzyk = this.zzdta.zzxl().a();
                zza("New client Id", zzyk);
            }
            String valueOf7 = String.valueOf(id);
            String valueOf8 = String.valueOf(zzyk);
            boolean b3 = b(valueOf8.length() != 0 ? valueOf7.concat(valueOf8) : new String(valueOf7));
            return b3;
        }
    }

    private final AdvertisingIdClient.Info b() {
        try {
            return AdvertisingIdClient.getAdvertisingIdInfo(this.zzdta.getContext());
        } catch (IllegalStateException unused) {
            zzdx("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
            return null;
        } catch (Throwable th) {
            if (!f3410a) {
                f3410a = true;
                zzd("Error getting advertiser id", th);
            }
            return null;
        }
    }

    private final boolean b(String str) {
        try {
            String a2 = a(str);
            zzdu("Storing hashed adid.");
            FileOutputStream openFileOutput = this.zzdta.getContext().openFileOutput("gaClientIdData", 0);
            openFileOutput.write(a2.getBytes());
            openFileOutput.close();
            this.d = a2;
            return true;
        } catch (IOException e2) {
            zze("Error creating hash file", e2);
            return false;
        }
    }

    private final String d() {
        String str = null;
        try {
            FileInputStream openFileInput = this.zzdta.getContext().openFileInput("gaClientIdData");
            byte[] bArr = new byte[128];
            int read = openFileInput.read(bArr, 0, 128);
            if (openFileInput.available() > 0) {
                zzdx("Hash file seems corrupted, deleting it.");
                openFileInput.close();
                this.zzdta.getContext().deleteFile("gaClientIdData");
                return null;
            } else if (read <= 0) {
                zzdu("Hash file is empty.");
                openFileInput.close();
                return null;
            } else {
                String str2 = new String(bArr, 0, read);
                try {
                    openFileInput.close();
                } catch (FileNotFoundException unused) {
                } catch (IOException e2) {
                    e = e2;
                    str = str2;
                    zzd("Error reading Hash file, deleting it", e);
                    this.zzdta.getContext().deleteFile("gaClientIdData");
                    return str;
                }
                return str2;
            }
        } catch (FileNotFoundException unused2) {
            return null;
        } catch (IOException e3) {
            e = e3;
            zzd("Error reading Hash file, deleting it", e);
            this.zzdta.getContext().deleteFile("gaClientIdData");
            return str;
        }
    }
}
