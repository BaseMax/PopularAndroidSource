package f.a.a.c.c;

import android.content.Context;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.PowerManager;
import com.crashlytics.android.Crashlytics;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

/* compiled from: FileUploader */
public class a extends Thread {

    /* renamed from: a  reason: collision with root package name */
    public Context f13982a;

    /* renamed from: b  reason: collision with root package name */
    public PowerManager.WakeLock f13983b = null;

    /* renamed from: c  reason: collision with root package name */
    public WifiManager.WifiLock f13984c = null;

    /* renamed from: d  reason: collision with root package name */
    public String f13985d;

    /* renamed from: e  reason: collision with root package name */
    public Uri f13986e;

    /* renamed from: f  reason: collision with root package name */
    public String f13987f;

    /* renamed from: g  reason: collision with root package name */
    public long f13988g;

    /* renamed from: h  reason: collision with root package name */
    public long f13989h;

    /* renamed from: i  reason: collision with root package name */
    public C0140a f13990i;

    /* renamed from: j  reason: collision with root package name */
    public String f13991j;

    /* renamed from: k  reason: collision with root package name */
    public String f13992k;

    /* renamed from: f.a.a.c.c.a$a  reason: collision with other inner class name */
    /* compiled from: FileUploader */
    public interface C0140a {
        void a(Exception exc);

        void a(String str);
    }

    public a(Context context, String str, Uri uri, C0140a aVar) {
        this.f13982a = context;
        this.f13985d = str;
        this.f13987f = "FILE_UPLOADER__" + System.currentTimeMillis();
        this.f13986e = uri;
        this.f13990i = aVar;
        this.f13988g = 0;
        this.f13989h = 1;
        this.f13991j = String.format("--%s\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: %s\r\nContent-Transfer-Encoding: binary\r\n\r\n", new Object[]{this.f13987f, "//TODO", this.f13986e.getLastPathSegment(), URLConnection.guessContentTypeFromName(this.f13986e.getLastPathSegment())});
        this.f13992k = String.format("\r\n\r\n--%s--\r\n", new Object[]{this.f13987f});
    }

    public final boolean a() {
        if (!isInterrupted()) {
            try {
                InputStream openInputStream = this.f13982a.getContentResolver().openInputStream(this.f13986e);
                this.f13989h = (long) openInputStream.available();
                byte[] bArr = new byte[16384];
                try {
                    HttpURLConnection b2 = b();
                    try {
                        OutputStream outputStream = b2.getOutputStream();
                        outputStream.write(this.f13991j.getBytes());
                        int i2 = 1;
                        while (i2 > 0) {
                            if (!isInterrupted()) {
                                i2 = openInputStream.read(bArr);
                                if (i2 > 0) {
                                    outputStream.write(bArr, 0, i2);
                                    this.f13988g += (long) i2;
                                }
                            } else {
                                throw new InterruptedException();
                            }
                        }
                        outputStream.write(this.f13992k.getBytes());
                        outputStream.close();
                        if (b2.getResponseCode() == 200) {
                            return true;
                        }
                        return false;
                    } catch (IOException e2) {
                        Crashlytics.logException(e2);
                        return false;
                    }
                } catch (InterruptedIOException e3) {
                    Crashlytics.logException(e3);
                    throw e3;
                } catch (Exception e4) {
                    Crashlytics.logException(e4);
                    return false;
                }
            } catch (IOException e5) {
                Crashlytics.logException(e5);
                throw e5;
            }
        } else {
            throw new InterruptedException();
        }
    }

    public final HttpURLConnection b() {
        URL url = new URL(this.f13985d);
        String host = url.getHost();
        InetAddress[] allByName = InetAddress.getAllByName(host);
        if (allByName.length > 0) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(url.getProtocol(), allByName[0].getHostAddress(), url.getPort(), url.getFile()).openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.addRequestProperty("Host", host);
            httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
            httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;boundary=" + this.f13987f);
            httpURLConnection.setConnectTimeout(30000);
            httpURLConnection.setReadTimeout(30000);
            return httpURLConnection;
        }
        throw new MalformedURLException();
    }

    public long c() {
        return this.f13989h;
    }

    public long d() {
        return this.f13988g;
    }

    public final void e() {
        if (this.f13983b == null) {
            this.f13983b = ((PowerManager) this.f13982a.getSystemService("power")).newWakeLock(1, "FILE_UPLOADER_Installable");
            this.f13983b.setReferenceCounted(true);
        }
        this.f13983b.acquire();
        WifiManager wifiManager = (WifiManager) this.f13982a.getSystemService("wifi");
        if (this.f13984c == null && wifiManager != null && wifiManager.isWifiEnabled()) {
            this.f13984c = wifiManager.createWifiLock("FILE_UPLOADER_Installable_Wifi");
            this.f13984c.setReferenceCounted(true);
        }
        WifiManager.WifiLock wifiLock = this.f13984c;
        if (wifiLock != null) {
            wifiLock.acquire();
        }
    }

    public final void f() {
        PowerManager.WakeLock wakeLock = this.f13983b;
        if (wakeLock != null && wakeLock.isHeld()) {
            this.f13983b.release();
        }
        WifiManager.WifiLock wifiLock = this.f13984c;
        if (wifiLock != null && wifiLock.isHeld()) {
            this.f13984c.release();
        }
    }

    public void run() {
        e();
        while (true) {
            try {
                if (!isInterrupted()) {
                    if (a()) {
                        this.f13990i.a("PEDARSAG");
                        break;
                    }
                } else {
                    break;
                }
            } catch (IOException | InterruptedException e2) {
                Crashlytics.logException(e2);
                this.f13990i.a(e2);
            } catch (Throwable th) {
                f();
                throw th;
            }
        }
        f();
    }
}
