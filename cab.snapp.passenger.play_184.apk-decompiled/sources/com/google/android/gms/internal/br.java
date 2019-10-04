package com.google.android.gms.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.google.android.gms.analytics.r;
import com.google.android.gms.common.internal.ap;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;

final class br extends x {
    /* access modifiers changed from: private */
    public static final byte[] c = "\n".getBytes();

    /* renamed from: a  reason: collision with root package name */
    private final String f3098a = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[]{"GoogleAnalytics", y.VERSION, Build.VERSION.RELEASE, ce.zza(Locale.getDefault()), Build.MODEL, Build.ID});

    /* renamed from: b  reason: collision with root package name */
    private final ca f3099b;

    br(z zVar) {
        super(zVar);
        this.f3099b = new ca(zVar.zzws());
    }

    private final URL a(bk bkVar) {
        String str;
        String valueOf;
        String valueOf2;
        String str2;
        if (bkVar.zzzk()) {
            valueOf = String.valueOf(ax.zzyw());
            valueOf2 = String.valueOf(ax.zzyy());
            if (valueOf2.length() == 0) {
                str2 = new String(valueOf);
                str = str2;
                return new URL(str);
            }
        } else {
            valueOf = String.valueOf(ax.zzyx());
            valueOf2 = String.valueOf(ax.zzyy());
            if (valueOf2.length() == 0) {
                str2 = new String(valueOf);
                str = str2;
                return new URL(str);
            }
        }
        str = valueOf.concat(valueOf2);
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private final URL a(bk bkVar, String str) {
        String str2;
        StringBuilder sb;
        String str3;
        if (bkVar.zzzk()) {
            str2 = ax.zzyw();
            str3 = ax.zzyy();
            sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str3).length() + String.valueOf(str).length());
        } else {
            str2 = ax.zzyx();
            str3 = ax.zzyy();
            sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str3).length() + String.valueOf(str).length());
        }
        sb.append(str2);
        sb.append(str3);
        sb.append("?");
        sb.append(str);
        try {
            return new URL(sb.toString());
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private static void a(StringBuilder sb, String str, String str2) throws UnsupportedEncodingException {
        if (sb.length() != 0) {
            sb.append('&');
        }
        sb.append(URLEncoder.encode(str, "UTF-8"));
        sb.append('=');
        sb.append(URLEncoder.encode(str2, "UTF-8"));
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0021 A[SYNTHETIC, Splitter:B:19:0x0021] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void a(java.net.HttpURLConnection r4) throws java.io.IOException {
        /*
            r3 = this;
            java.lang.String r0 = "Error closing http connection input stream"
            java.io.InputStream r4 = r4.getInputStream()     // Catch:{ all -> 0x001d }
            r1 = 1024(0x400, float:1.435E-42)
            byte[] r1 = new byte[r1]     // Catch:{ all -> 0x001b }
        L_0x000a:
            int r2 = r4.read(r1)     // Catch:{ all -> 0x001b }
            if (r2 > 0) goto L_0x000a
            if (r4 == 0) goto L_0x001a
            r4.close()     // Catch:{ IOException -> 0x0016 }
            return
        L_0x0016:
            r4 = move-exception
            r3.zze(r0, r4)
        L_0x001a:
            return
        L_0x001b:
            r1 = move-exception
            goto L_0x001f
        L_0x001d:
            r1 = move-exception
            r4 = 0
        L_0x001f:
            if (r4 == 0) goto L_0x0029
            r4.close()     // Catch:{ IOException -> 0x0025 }
            goto L_0x0029
        L_0x0025:
            r4 = move-exception
            r3.zze(r0, r4)
        L_0x0029:
            goto L_0x002b
        L_0x002a:
            throw r1
        L_0x002b:
            goto L_0x002a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.br.a(java.net.HttpURLConnection):void");
    }

    private final HttpURLConnection b(URL url) throws IOException {
        URLConnection openConnection = url.openConnection();
        if (openConnection instanceof HttpURLConnection) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setConnectTimeout(bf.zzdxa.get().intValue());
            httpURLConnection.setReadTimeout(bf.zzdxb.get().intValue());
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setRequestProperty("User-Agent", this.f3098a);
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        }
        throw new IOException("Failed to obtain http connection");
    }

    private final URL b() {
        String valueOf = String.valueOf(ax.zzyw());
        String valueOf2 = String.valueOf(bf.zzdwp.get());
        try {
            return new URL(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public final void zzvf() {
        zza("Network initialized. User agent", this.f3098a);
    }

    public final boolean zzzs() {
        NetworkInfo networkInfo;
        r.zzve();
        c();
        try {
            networkInfo = ((ConnectivityManager) this.zzdta.getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException unused) {
            networkInfo = null;
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            return true;
        }
        zzdu("No network connectivity");
        return false;
    }

    public final List<Long> zzu(List<bk> list) {
        boolean z;
        r.zzve();
        c();
        ap.checkNotNull(list);
        boolean z2 = false;
        if (this.zzdta.zzwu().zzyz().isEmpty() || !this.f3099b.zzu(((long) bf.zzdwy.get().intValue()) * 1000)) {
            z = false;
        } else {
            z = zzaqt.zzed(bf.zzdwr.get()) != zzaqt.NONE;
            if (zzaqz.zzee(bf.zzdws.get()) == zzaqz.GZIP) {
                z2 = true;
            }
        }
        if (!z) {
            return a(list);
        }
        ap.checkArgument(!list.isEmpty());
        zza("Uploading batched hits. compression, count", Boolean.valueOf(z2), Integer.valueOf(list.size()));
        bs bsVar = new bs(this);
        ArrayList arrayList = new ArrayList();
        for (bk next : list) {
            if (!bsVar.zze(next)) {
                break;
            }
            arrayList.add(Long.valueOf(next.zzzh()));
        }
        if (bsVar.zzzv() == 0) {
            return arrayList;
        }
        URL b2 = b();
        if (b2 == null) {
            zzdy("Failed to build batching endpoint url");
        } else {
            int b3 = z2 ? b(b2, bsVar.getPayload()) : a(b2, bsVar.getPayload());
            if (200 == b3) {
                zza("Batched upload completed. Hits batched", Integer.valueOf(bsVar.zzzv()));
                return arrayList;
            }
            zza("Network error uploading hits. status code", Integer.valueOf(b3));
            if (this.zzdta.zzwu().zzyz().contains(Integer.valueOf(b3))) {
                zzdx("Server instructed the client to stop batching");
                this.f3099b.start();
            }
        }
        return Collections.emptyList();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x005a, code lost:
        if (a(r2) == 200) goto L_0x00a2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x00a0, code lost:
        if (a(r5, r2) == 200) goto L_0x00a2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final java.util.List<java.lang.Long> a(java.util.List<com.google.android.gms.internal.bk> r9) {
        /*
            r8 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r9.size()
            r0.<init>(r1)
            java.util.Iterator r9 = r9.iterator()
        L_0x000d:
            boolean r1 = r9.hasNext()
            if (r1 == 0) goto L_0x00b9
            java.lang.Object r1 = r9.next()
            com.google.android.gms.internal.bk r1 = (com.google.android.gms.internal.bk) r1
            com.google.android.gms.common.internal.ap.checkNotNull(r1)
            boolean r2 = r1.zzzk()
            r3 = 1
            r2 = r2 ^ r3
            java.lang.String r2 = r8.a((com.google.android.gms.internal.bk) r1, (boolean) r2)
            r4 = 0
            if (r2 != 0) goto L_0x0036
            com.google.android.gms.internal.z r2 = r8.zzdta
            com.google.android.gms.internal.bp r2 = r2.zzwt()
            java.lang.String r4 = "Error formatting hit for upload"
            r2.zza(r1, r4)
            goto L_0x00a2
        L_0x0036:
            int r5 = r2.length()
            com.google.android.gms.internal.bg<java.lang.Integer> r6 = com.google.android.gms.internal.bf.zzdwq
            java.lang.Object r6 = r6.get()
            java.lang.Integer r6 = (java.lang.Integer) r6
            int r6 = r6.intValue()
            r7 = 200(0xc8, float:2.8E-43)
            if (r5 > r6) goto L_0x005f
            java.net.URL r2 = r8.a((com.google.android.gms.internal.bk) r1, (java.lang.String) r2)
            if (r2 != 0) goto L_0x0056
            java.lang.String r2 = "Failed to build collect GET endpoint url"
            r8.zzdy(r2)
            goto L_0x005d
        L_0x0056:
            int r2 = r8.a((java.net.URL) r2)
            if (r2 != r7) goto L_0x005d
            goto L_0x00a2
        L_0x005d:
            r3 = 0
            goto L_0x00a2
        L_0x005f:
            java.lang.String r2 = r8.a((com.google.android.gms.internal.bk) r1, (boolean) r4)
            if (r2 != 0) goto L_0x0071
            com.google.android.gms.internal.z r2 = r8.zzdta
            com.google.android.gms.internal.bp r2 = r2.zzwt()
            java.lang.String r4 = "Error formatting hit for POST upload"
            r2.zza(r1, r4)
            goto L_0x00a2
        L_0x0071:
            byte[] r2 = r2.getBytes()
            int r5 = r2.length
            com.google.android.gms.internal.bg<java.lang.Integer> r6 = com.google.android.gms.internal.bf.zzdwv
            java.lang.Object r6 = r6.get()
            java.lang.Integer r6 = (java.lang.Integer) r6
            int r6 = r6.intValue()
            if (r5 <= r6) goto L_0x0090
            com.google.android.gms.internal.z r2 = r8.zzdta
            com.google.android.gms.internal.bp r2 = r2.zzwt()
            java.lang.String r4 = "Hit payload exceeds size limit"
            r2.zza(r1, r4)
            goto L_0x00a2
        L_0x0090:
            java.net.URL r5 = r8.a((com.google.android.gms.internal.bk) r1)
            if (r5 != 0) goto L_0x009c
            java.lang.String r2 = "Failed to build collect POST endpoint url"
            r8.zzdy(r2)
            goto L_0x005d
        L_0x009c:
            int r2 = r8.a((java.net.URL) r5, (byte[]) r2)
            if (r2 != r7) goto L_0x005d
        L_0x00a2:
            if (r3 == 0) goto L_0x00b9
            long r1 = r1.zzzh()
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            r0.add(r1)
            int r1 = r0.size()
            int r2 = com.google.android.gms.internal.ax.zzyu()
            if (r1 < r2) goto L_0x000d
        L_0x00b9:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.br.a(java.util.List):java.util.List");
    }

    private final int a(URL url) {
        ap.checkNotNull(url);
        zzb("GET request", url);
        HttpURLConnection httpURLConnection = null;
        try {
            HttpURLConnection b2 = b(url);
            b2.connect();
            a(b2);
            int responseCode = b2.getResponseCode();
            if (responseCode == 200) {
                this.zzdta.zzwx().b();
            }
            zzb("GET status", Integer.valueOf(responseCode));
            if (b2 != null) {
                b2.disconnect();
            }
            return responseCode;
        } catch (IOException e) {
            zzd("Network GET connection error", e);
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return 0;
        } catch (Throwable th) {
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v8, resolved type: java.net.HttpURLConnection} */
    /* JADX WARNING: type inference failed for: r5v1, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r5v2, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r5v4 */
    /* JADX WARNING: type inference failed for: r5v5 */
    /* JADX WARNING: type inference failed for: r5v7 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x007d A[SYNTHETIC, Splitter:B:29:0x007d] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0087  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x008f A[SYNTHETIC, Splitter:B:39:0x008f] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0099  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int a(java.net.URL r5, byte[] r6) {
        /*
            r4 = this;
            java.lang.String r0 = "Error closing http post connection output stream"
            com.google.android.gms.common.internal.ap.checkNotNull(r5)
            com.google.android.gms.common.internal.ap.checkNotNull(r6)
            int r1 = r6.length
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.String r2 = "POST bytes, url"
            r4.zzb(r2, r1, r5)
            boolean r1 = zzpz()
            if (r1 == 0) goto L_0x0022
            java.lang.String r1 = new java.lang.String
            r1.<init>(r6)
            java.lang.String r2 = "Post payload\n"
            r4.zza(r2, r1)
        L_0x0022:
            r1 = 0
            com.google.android.gms.internal.z r2 = r4.zzdta     // Catch:{ IOException -> 0x0074, all -> 0x0071 }
            android.content.Context r2 = r2.getContext()     // Catch:{ IOException -> 0x0074, all -> 0x0071 }
            r2.getPackageName()     // Catch:{ IOException -> 0x0074, all -> 0x0071 }
            java.net.HttpURLConnection r5 = r4.b(r5)     // Catch:{ IOException -> 0x0074, all -> 0x0071 }
            r2 = 1
            r5.setDoOutput(r2)     // Catch:{ IOException -> 0x006f }
            int r2 = r6.length     // Catch:{ IOException -> 0x006f }
            r5.setFixedLengthStreamingMode(r2)     // Catch:{ IOException -> 0x006f }
            r5.connect()     // Catch:{ IOException -> 0x006f }
            java.io.OutputStream r1 = r5.getOutputStream()     // Catch:{ IOException -> 0x006f }
            r1.write(r6)     // Catch:{ IOException -> 0x006f }
            r4.a((java.net.HttpURLConnection) r5)     // Catch:{ IOException -> 0x006f }
            int r6 = r5.getResponseCode()     // Catch:{ IOException -> 0x006f }
            r2 = 200(0xc8, float:2.8E-43)
            if (r6 != r2) goto L_0x0056
            com.google.android.gms.internal.z r2 = r4.zzdta     // Catch:{ IOException -> 0x006f }
            com.google.android.gms.internal.o r2 = r2.zzwx()     // Catch:{ IOException -> 0x006f }
            r2.b()     // Catch:{ IOException -> 0x006f }
        L_0x0056:
            java.lang.String r2 = "POST status"
            java.lang.Integer r3 = java.lang.Integer.valueOf(r6)     // Catch:{ IOException -> 0x006f }
            r4.zzb(r2, r3)     // Catch:{ IOException -> 0x006f }
            if (r1 == 0) goto L_0x0069
            r1.close()     // Catch:{ IOException -> 0x0065 }
            goto L_0x0069
        L_0x0065:
            r1 = move-exception
            r4.zze(r0, r1)
        L_0x0069:
            if (r5 == 0) goto L_0x006e
            r5.disconnect()
        L_0x006e:
            return r6
        L_0x006f:
            r6 = move-exception
            goto L_0x0076
        L_0x0071:
            r6 = move-exception
            r5 = r1
            goto L_0x008d
        L_0x0074:
            r6 = move-exception
            r5 = r1
        L_0x0076:
            java.lang.String r2 = "Network POST connection error"
            r4.zzd(r2, r6)     // Catch:{ all -> 0x008c }
            if (r1 == 0) goto L_0x0085
            r1.close()     // Catch:{ IOException -> 0x0081 }
            goto L_0x0085
        L_0x0081:
            r6 = move-exception
            r4.zze(r0, r6)
        L_0x0085:
            if (r5 == 0) goto L_0x008a
            r5.disconnect()
        L_0x008a:
            r5 = 0
            return r5
        L_0x008c:
            r6 = move-exception
        L_0x008d:
            if (r1 == 0) goto L_0x0097
            r1.close()     // Catch:{ IOException -> 0x0093 }
            goto L_0x0097
        L_0x0093:
            r1 = move-exception
            r4.zze(r0, r1)
        L_0x0097:
            if (r5 == 0) goto L_0x009c
            r5.disconnect()
        L_0x009c:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.br.a(java.net.URL, byte[]):int");
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x00da A[SYNTHETIC, Splitter:B:42:0x00da] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00e4  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00ec A[SYNTHETIC, Splitter:B:52:0x00ec] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00f6  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int b(java.net.URL r11, byte[] r12) {
        /*
            r10 = this;
            java.lang.String r0 = "Error closing http compressed post connection output stream"
            com.google.android.gms.common.internal.ap.checkNotNull(r11)
            com.google.android.gms.common.internal.ap.checkNotNull(r12)
            r1 = 0
            com.google.android.gms.internal.z r2 = r10.zzdta     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            android.content.Context r2 = r2.getContext()     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            r2.getPackageName()     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            r2.<init>()     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            java.util.zip.GZIPOutputStream r3 = new java.util.zip.GZIPOutputStream     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            r3.<init>(r2)     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            r3.write(r12)     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            r3.close()     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            r2.close()     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            byte[] r2 = r2.toByteArray()     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            java.lang.String r3 = "POST compressed size, ratio %, url"
            int r4 = r2.length     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            r5 = 100
            int r7 = r2.length     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            long r7 = (long) r7     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            long r7 = r7 * r5
            int r5 = r12.length     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            long r5 = (long) r5     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            long r7 = r7 / r5
            java.lang.Long r5 = java.lang.Long.valueOf(r7)     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            r10.zza(r3, r4, r5, r11)     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            int r3 = r2.length     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            int r4 = r12.length     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            if (r3 <= r4) goto L_0x0053
            java.lang.String r3 = "Compressed payload is larger then uncompressed. compressed, uncompressed"
            int r4 = r2.length     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            int r5 = r12.length     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            r10.zzc(r3, r4, r5)     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
        L_0x0053:
            boolean r3 = zzpz()     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            if (r3 == 0) goto L_0x0075
            java.lang.String r3 = "Post payload"
            java.lang.String r4 = "\n"
            java.lang.String r5 = new java.lang.String     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            r5.<init>(r12)     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            int r12 = r5.length()     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            if (r12 == 0) goto L_0x006d
            java.lang.String r12 = r4.concat(r5)     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            goto L_0x0072
        L_0x006d:
            java.lang.String r12 = new java.lang.String     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            r12.<init>(r4)     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
        L_0x0072:
            r10.zza(r3, r12)     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
        L_0x0075:
            java.net.HttpURLConnection r11 = r10.b(r11)     // Catch:{ IOException -> 0x00d1, all -> 0x00ce }
            r12 = 1
            r11.setDoOutput(r12)     // Catch:{ IOException -> 0x00c9, all -> 0x00c4 }
            java.lang.String r12 = "Content-Encoding"
            java.lang.String r3 = "gzip"
            r11.addRequestProperty(r12, r3)     // Catch:{ IOException -> 0x00c9, all -> 0x00c4 }
            int r12 = r2.length     // Catch:{ IOException -> 0x00c9, all -> 0x00c4 }
            r11.setFixedLengthStreamingMode(r12)     // Catch:{ IOException -> 0x00c9, all -> 0x00c4 }
            r11.connect()     // Catch:{ IOException -> 0x00c9, all -> 0x00c4 }
            java.io.OutputStream r12 = r11.getOutputStream()     // Catch:{ IOException -> 0x00c9, all -> 0x00c4 }
            r12.write(r2)     // Catch:{ IOException -> 0x00be, all -> 0x00b8 }
            r12.close()     // Catch:{ IOException -> 0x00be, all -> 0x00b8 }
            r10.a((java.net.HttpURLConnection) r11)     // Catch:{ IOException -> 0x00c9, all -> 0x00c4 }
            int r12 = r11.getResponseCode()     // Catch:{ IOException -> 0x00c9, all -> 0x00c4 }
            r2 = 200(0xc8, float:2.8E-43)
            if (r12 != r2) goto L_0x00a9
            com.google.android.gms.internal.z r2 = r10.zzdta     // Catch:{ IOException -> 0x00c9, all -> 0x00c4 }
            com.google.android.gms.internal.o r2 = r2.zzwx()     // Catch:{ IOException -> 0x00c9, all -> 0x00c4 }
            r2.b()     // Catch:{ IOException -> 0x00c9, all -> 0x00c4 }
        L_0x00a9:
            java.lang.String r2 = "POST status"
            java.lang.Integer r3 = java.lang.Integer.valueOf(r12)     // Catch:{ IOException -> 0x00c9, all -> 0x00c4 }
            r10.zzb(r2, r3)     // Catch:{ IOException -> 0x00c9, all -> 0x00c4 }
            if (r11 == 0) goto L_0x00b7
            r11.disconnect()
        L_0x00b7:
            return r12
        L_0x00b8:
            r1 = move-exception
            r9 = r12
            r12 = r11
            r11 = r1
            r1 = r9
            goto L_0x00ea
        L_0x00be:
            r1 = move-exception
            r9 = r12
            r12 = r11
            r11 = r1
            r1 = r9
            goto L_0x00d3
        L_0x00c4:
            r12 = move-exception
            r9 = r12
            r12 = r11
            r11 = r9
            goto L_0x00ea
        L_0x00c9:
            r12 = move-exception
            r9 = r12
            r12 = r11
            r11 = r9
            goto L_0x00d3
        L_0x00ce:
            r11 = move-exception
            r12 = r1
            goto L_0x00ea
        L_0x00d1:
            r11 = move-exception
            r12 = r1
        L_0x00d3:
            java.lang.String r2 = "Network compressed POST connection error"
            r10.zzd(r2, r11)     // Catch:{ all -> 0x00e9 }
            if (r1 == 0) goto L_0x00e2
            r1.close()     // Catch:{ IOException -> 0x00de }
            goto L_0x00e2
        L_0x00de:
            r11 = move-exception
            r10.zze(r0, r11)
        L_0x00e2:
            if (r12 == 0) goto L_0x00e7
            r12.disconnect()
        L_0x00e7:
            r11 = 0
            return r11
        L_0x00e9:
            r11 = move-exception
        L_0x00ea:
            if (r1 == 0) goto L_0x00f4
            r1.close()     // Catch:{ IOException -> 0x00f0 }
            goto L_0x00f4
        L_0x00f0:
            r1 = move-exception
            r10.zze(r0, r1)
        L_0x00f4:
            if (r12 == 0) goto L_0x00f9
            r12.disconnect()
        L_0x00f9:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.br.b(java.net.URL, byte[]):int");
    }

    /* access modifiers changed from: package-private */
    public final String a(bk bkVar, boolean z) {
        ap.checkNotNull(bkVar);
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry next : bkVar.zzjh().entrySet()) {
                String str = (String) next.getKey();
                if (!"ht".equals(str) && !"qt".equals(str) && !"AppUID".equals(str) && !"z".equals(str) && !"_gmsv".equals(str)) {
                    a(sb, str, (String) next.getValue());
                }
            }
            a(sb, "ht", String.valueOf(bkVar.zzzi()));
            a(sb, "qt", String.valueOf(this.zzdta.zzws().currentTimeMillis() - bkVar.zzzi()));
            if (z) {
                long zzzl = bkVar.zzzl();
                a(sb, "z", zzzl != 0 ? String.valueOf(zzzl) : String.valueOf(bkVar.zzzh()));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            zze("Failed to encode name or value", e);
            return null;
        }
    }
}
