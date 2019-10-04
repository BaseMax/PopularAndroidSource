package com.facebook.a.a.a;

import android.os.Build;
import android.os.Process;
import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.SecureRandomSpi;
import java.security.Security;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f2419a;

    public static class a extends RuntimeException {
        public a(Throwable th) {
            super("Error fixing the Android's SecureRandom", th);
        }
    }

    public static class b extends SecureRandomSpi {

        /* renamed from: a  reason: collision with root package name */
        private static final File f2420a = new File("/dev/urandom");

        /* renamed from: b  reason: collision with root package name */
        private static final Object f2421b = new Object();
        private static DataInputStream c;
        private static OutputStream d;
        private boolean e;

        /* access modifiers changed from: protected */
        public void engineSetSeed(byte[] bArr) {
            OutputStream b2;
            try {
                synchronized (f2421b) {
                    b2 = b();
                }
                b2.write(bArr);
                b2.flush();
                this.e = true;
            } catch (Throwable unused) {
                this.e = true;
            }
        }

        /* access modifiers changed from: protected */
        public void engineNextBytes(byte[] bArr) {
            DataInputStream a2;
            if (!this.e) {
                engineSetSeed(c.a());
            }
            try {
                synchronized (f2421b) {
                    a2 = a();
                }
                synchronized (a2) {
                    a2.readFully(bArr);
                }
            } catch (IOException e2) {
                throw new SecurityException("Failed to read from " + f2420a, e2);
            }
        }

        /* access modifiers changed from: protected */
        public byte[] engineGenerateSeed(int i) {
            byte[] bArr = new byte[i];
            engineNextBytes(bArr);
            return bArr;
        }

        private static DataInputStream a() {
            DataInputStream dataInputStream;
            synchronized (f2421b) {
                if (c == null) {
                    try {
                        c = new DataInputStream(new FileInputStream(f2420a));
                    } catch (IOException e2) {
                        throw new SecurityException("Failed to open " + f2420a + " for reading", e2);
                    }
                }
                dataInputStream = c;
            }
            return dataInputStream;
        }

        private static OutputStream b() {
            OutputStream outputStream;
            synchronized (f2421b) {
                if (d == null) {
                    try {
                        d = new FileOutputStream(f2420a);
                    } catch (IOException e2) {
                        throw new SecurityException("Failed to open " + f2420a + " for writing", e2);
                    }
                }
                outputStream = d;
            }
            return outputStream;
        }
    }

    /* renamed from: com.facebook.a.a.a.c$c  reason: collision with other inner class name */
    static class C0049c extends Provider {
        public C0049c() {
            super("LinuxPRNG", 1.0d, "A Linux-specific random number provider that uses /dev/urandom");
            put("SecureRandom.SHA1PRNG", b.class.getName());
            put("SecureRandom.SHA1PRNG ImplementedIn", ExifInterface.TAG_SOFTWARE);
        }
    }

    public static synchronized void tryApplyFixes() throws a {
        synchronized (c.class) {
            if (!f2419a) {
                try {
                    if (Build.VERSION.SDK_INT >= 17 && Build.VERSION.SDK_INT <= 18) {
                        Class.forName("org.apache.harmony.xnet.provider.jsse.NativeCrypto").getMethod("RAND_seed", new Class[]{byte[].class}).invoke(null, new Object[]{a()});
                        int intValue = ((Integer) Class.forName("org.apache.harmony.xnet.provider.jsse.NativeCrypto").getMethod("RAND_load_file", new Class[]{String.class, Long.TYPE}).invoke(null, new Object[]{"/dev/urandom", 1024})).intValue();
                        if (intValue != 1024) {
                            throw new IOException("Unexpected number of bytes read from Linux PRNG: ".concat(String.valueOf(intValue)));
                        }
                    }
                    if (Build.VERSION.SDK_INT <= 18) {
                        Provider[] providers = Security.getProviders("SecureRandom.SHA1PRNG");
                        if (providers == null || providers.length <= 0 || !C0049c.class.equals(providers[0].getClass())) {
                            Security.insertProviderAt(new C0049c(), 1);
                        }
                        SecureRandom secureRandom = new SecureRandom();
                        if (C0049c.class.equals(secureRandom.getProvider().getClass())) {
                            SecureRandom instance = SecureRandom.getInstance("SHA1PRNG");
                            if (!C0049c.class.equals(instance.getProvider().getClass())) {
                                throw new SecurityException("SecureRandom.getInstance(\"SHA1PRNG\") backed by wrong Provider: " + instance.getProvider().getClass());
                            }
                        } else {
                            throw new SecurityException("new SecureRandom() backed by wrong Provider: " + secureRandom.getProvider().getClass());
                        }
                    }
                    f2419a = true;
                } catch (NoSuchAlgorithmException e) {
                    throw new SecurityException("SHA1PRNG not available", e);
                } catch (Exception e2) {
                    throw new SecurityException("Failed to seed OpenSSL PRNG", e2);
                } catch (Throwable th) {
                    throw new a(th);
                }
            }
        }
    }

    static byte[] a() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeLong(System.currentTimeMillis());
            dataOutputStream.writeLong(System.nanoTime());
            dataOutputStream.writeInt(Process.myPid());
            dataOutputStream.writeInt(Process.myUid());
            dataOutputStream.write(b());
            dataOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new SecurityException("Failed to generate seed", e);
        }
    }

    private static byte[] b() {
        StringBuilder sb = new StringBuilder();
        String str = Build.FINGERPRINT;
        if (str != null) {
            sb.append(str);
        }
        String c = c();
        if (c != null) {
            sb.append(c);
        }
        try {
            return sb.toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
            throw new RuntimeException("UTF-8 encoding not supported");
        }
    }

    private static String c() {
        try {
            return (String) Build.class.getField("SERIAL").get(null);
        } catch (Exception unused) {
            return null;
        }
    }
}
