package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.ap;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;
import java.util.concurrent.Future;

public final class aq extends x {

    /* renamed from: a  reason: collision with root package name */
    private volatile String f3068a;

    /* renamed from: b  reason: collision with root package name */
    private Future<String> f3069b;

    protected aq(z zVar) {
        super(zVar);
    }

    private final boolean a(Context context, String str) {
        ap.zzgm(str);
        ap.zzgn("ClientId should be saved from worker thread");
        FileOutputStream fileOutputStream = null;
        try {
            zza("Storing clientId", str);
            fileOutputStream = context.openFileOutput("gaClientId", 0);
            fileOutputStream.write(str.getBytes());
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e) {
                    zze("Failed to close clientId writing stream", e);
                }
            }
            return true;
        } catch (FileNotFoundException e2) {
            zze("Error creating clientId file", e2);
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e3) {
                    zze("Failed to close clientId writing stream", e3);
                }
            }
            return false;
        } catch (IOException e4) {
            zze("Error writing to clientId file", e4);
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e5) {
                    zze("Failed to close clientId writing stream", e5);
                }
            }
            return false;
        } catch (Throwable th) {
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e6) {
                    zze("Failed to close clientId writing stream", e6);
                }
            }
            throw th;
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0078 A[SYNTHETIC, Splitter:B:43:0x0078] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0084 A[SYNTHETIC, Splitter:B:50:0x0084] */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0090 A[SYNTHETIC, Splitter:B:58:0x0090] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String a(android.content.Context r9) {
        /*
            r8 = this;
            java.lang.String r0 = "gaClientId"
            java.lang.String r1 = "Failed to close client id reading stream"
            java.lang.String r2 = "ClientId should be loaded from worker thread"
            com.google.android.gms.common.internal.ap.zzgn(r2)
            r2 = 0
            java.io.FileInputStream r3 = r9.openFileInput(r0)     // Catch:{ FileNotFoundException -> 0x008d, IOException -> 0x006c, all -> 0x0069 }
            r4 = 36
            byte[] r5 = new byte[r4]     // Catch:{ FileNotFoundException -> 0x0067, IOException -> 0x0065 }
            r6 = 0
            int r4 = r3.read(r5, r6, r4)     // Catch:{ FileNotFoundException -> 0x0067, IOException -> 0x0065 }
            int r7 = r3.available()     // Catch:{ FileNotFoundException -> 0x0067, IOException -> 0x0065 }
            if (r7 <= 0) goto L_0x0033
            java.lang.String r4 = "clientId file seems corrupted, deleting it."
            r8.zzdx(r4)     // Catch:{ FileNotFoundException -> 0x0067, IOException -> 0x0065 }
            r3.close()     // Catch:{ FileNotFoundException -> 0x0067, IOException -> 0x0065 }
            r9.deleteFile(r0)     // Catch:{ FileNotFoundException -> 0x0067, IOException -> 0x0065 }
            if (r3 == 0) goto L_0x0032
            r3.close()     // Catch:{ IOException -> 0x002e }
            goto L_0x0032
        L_0x002e:
            r9 = move-exception
            r8.zze(r1, r9)
        L_0x0032:
            return r2
        L_0x0033:
            r7 = 14
            if (r4 >= r7) goto L_0x004d
            java.lang.String r4 = "clientId file is empty, deleting it."
            r8.zzdx(r4)     // Catch:{ FileNotFoundException -> 0x0067, IOException -> 0x0065 }
            r3.close()     // Catch:{ FileNotFoundException -> 0x0067, IOException -> 0x0065 }
            r9.deleteFile(r0)     // Catch:{ FileNotFoundException -> 0x0067, IOException -> 0x0065 }
            if (r3 == 0) goto L_0x004c
            r3.close()     // Catch:{ IOException -> 0x0048 }
            goto L_0x004c
        L_0x0048:
            r9 = move-exception
            r8.zze(r1, r9)
        L_0x004c:
            return r2
        L_0x004d:
            r3.close()     // Catch:{ FileNotFoundException -> 0x0067, IOException -> 0x0065 }
            java.lang.String r7 = new java.lang.String     // Catch:{ FileNotFoundException -> 0x0067, IOException -> 0x0065 }
            r7.<init>(r5, r6, r4)     // Catch:{ FileNotFoundException -> 0x0067, IOException -> 0x0065 }
            java.lang.String r4 = "Read client id from disk"
            r8.zza(r4, r7)     // Catch:{ FileNotFoundException -> 0x0067, IOException -> 0x0065 }
            if (r3 == 0) goto L_0x0064
            r3.close()     // Catch:{ IOException -> 0x0060 }
            goto L_0x0064
        L_0x0060:
            r9 = move-exception
            r8.zze(r1, r9)
        L_0x0064:
            return r7
        L_0x0065:
            r4 = move-exception
            goto L_0x006e
        L_0x0067:
            goto L_0x008e
        L_0x0069:
            r9 = move-exception
            r3 = r2
            goto L_0x0082
        L_0x006c:
            r4 = move-exception
            r3 = r2
        L_0x006e:
            java.lang.String r5 = "Error reading client id file, deleting it"
            r8.zze(r5, r4)     // Catch:{ all -> 0x0081 }
            r9.deleteFile(r0)     // Catch:{ all -> 0x0081 }
            if (r3 == 0) goto L_0x0080
            r3.close()     // Catch:{ IOException -> 0x007c }
            goto L_0x0080
        L_0x007c:
            r9 = move-exception
            r8.zze(r1, r9)
        L_0x0080:
            return r2
        L_0x0081:
            r9 = move-exception
        L_0x0082:
            if (r3 == 0) goto L_0x008c
            r3.close()     // Catch:{ IOException -> 0x0088 }
            goto L_0x008c
        L_0x0088:
            r0 = move-exception
            r8.zze(r1, r0)
        L_0x008c:
            throw r9
        L_0x008d:
            r3 = r2
        L_0x008e:
            if (r3 == 0) goto L_0x0098
            r3.close()     // Catch:{ IOException -> 0x0094 }
            goto L_0x0098
        L_0x0094:
            r9 = move-exception
            r8.zze(r1, r9)
        L_0x0098:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.aq.a(android.content.Context):java.lang.String");
    }

    /* access modifiers changed from: protected */
    public final void zzvf() {
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0040 A[Catch:{ InterruptedException -> 0x0033, ExecutionException -> 0x0028 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String zzyk() {
        /*
            r2 = this;
            r2.c()
            monitor-enter(r2)
            java.lang.String r0 = r2.f3068a     // Catch:{ all -> 0x0052 }
            if (r0 != 0) goto L_0x0019
            com.google.android.gms.internal.z r0 = r2.zzdta     // Catch:{ all -> 0x0052 }
            com.google.android.gms.analytics.r r0 = r0.zzwv()     // Catch:{ all -> 0x0052 }
            com.google.android.gms.internal.ar r1 = new com.google.android.gms.internal.ar     // Catch:{ all -> 0x0052 }
            r1.<init>(r2)     // Catch:{ all -> 0x0052 }
            java.util.concurrent.Future r0 = r0.zza(r1)     // Catch:{ all -> 0x0052 }
            r2.f3069b = r0     // Catch:{ all -> 0x0052 }
        L_0x0019:
            java.util.concurrent.Future<java.lang.String> r0 = r2.f3069b     // Catch:{ all -> 0x0052 }
            if (r0 == 0) goto L_0x004e
            java.util.concurrent.Future<java.lang.String> r0 = r2.f3069b     // Catch:{ InterruptedException -> 0x0033, ExecutionException -> 0x0028 }
            java.lang.Object r0 = r0.get()     // Catch:{ InterruptedException -> 0x0033, ExecutionException -> 0x0028 }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ InterruptedException -> 0x0033, ExecutionException -> 0x0028 }
            r2.f3068a = r0     // Catch:{ InterruptedException -> 0x0033, ExecutionException -> 0x0028 }
            goto L_0x003c
        L_0x0028:
            r0 = move-exception
            java.lang.String r1 = "Failed to load or generate client id"
            r2.zze(r1, r0)     // Catch:{ all -> 0x0052 }
            java.lang.String r0 = "0"
        L_0x0030:
            r2.f3068a = r0     // Catch:{ all -> 0x0052 }
            goto L_0x003c
        L_0x0033:
            r0 = move-exception
            java.lang.String r1 = "ClientId loading or generation was interrupted"
            r2.zzd(r1, r0)     // Catch:{ all -> 0x0052 }
            java.lang.String r0 = "0"
            goto L_0x0030
        L_0x003c:
            java.lang.String r0 = r2.f3068a     // Catch:{ all -> 0x0052 }
            if (r0 != 0) goto L_0x0044
            java.lang.String r0 = "0"
            r2.f3068a = r0     // Catch:{ all -> 0x0052 }
        L_0x0044:
            java.lang.String r0 = "Loaded clientId"
            java.lang.String r1 = r2.f3068a     // Catch:{ all -> 0x0052 }
            r2.zza(r0, r1)     // Catch:{ all -> 0x0052 }
            r0 = 0
            r2.f3069b = r0     // Catch:{ all -> 0x0052 }
        L_0x004e:
            java.lang.String r0 = r2.f3068a     // Catch:{ all -> 0x0052 }
            monitor-exit(r2)     // Catch:{ all -> 0x0052 }
            return r0
        L_0x0052:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0052 }
            goto L_0x0056
        L_0x0055:
            throw r0
        L_0x0056:
            goto L_0x0055
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.aq.zzyk():java.lang.String");
    }

    /* access modifiers changed from: package-private */
    public final String a() {
        synchronized (this) {
            this.f3068a = null;
            this.f3069b = this.zzdta.zzwv().zza(new as(this));
        }
        return zzyk();
    }

    /* access modifiers changed from: package-private */
    public final String b() {
        String lowerCase = UUID.randomUUID().toString().toLowerCase();
        try {
            return !a(this.zzdta.zzwv().getContext(), lowerCase) ? "0" : lowerCase;
        } catch (Exception e) {
            zze("Error saving clientId file", e);
            return "0";
        }
    }
}
