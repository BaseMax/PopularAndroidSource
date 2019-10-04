package com.webengage.sdk.android.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.WindowManager;
import com.webengage.sdk.android.Logger;
import io.fabric.sdk.android.services.network.c;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;

public class k {

    /* renamed from: a  reason: collision with root package name */
    private static Pattern f5603a = Pattern.compile("[{}()\\[\\].+*?^$\\\\|]");

    public static double a(String str, String str2) {
        return Double.valueOf(String.valueOf(Math.abs((str + str2).hashCode()) % 100)).doubleValue();
    }

    public static int a(float f, Context context) {
        return (int) TypedValue.applyDimension(1, f, b(context));
    }

    public static Bundle a(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Object a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(bArr));
            Object readObject = objectInputStream.readObject();
            objectInputStream.close();
            return readObject;
        } catch (Exception unused) {
            try {
                return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            } catch (Exception unused2) {
                return null;
            }
        }
    }

    public static String a() {
        return new SimpleDateFormat("Z", Locale.US).format(Calendar.getInstance().getTime());
    }

    public static String a(String str) {
        if (str == null) {
            return null;
        }
        return f5603a.matcher(str).replaceAll("\\\\$0");
    }

    public static String a(String str, int i) {
        if (str == null) {
            return null;
        }
        if (str.length() > i) {
            str = str.substring(0, i);
        }
        return str;
    }

    public static String a(Map<String, String> map) {
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry next : map.entrySet()) {
            stringBuffer.append(stringBuffer.length() == 0 ? "" : "&");
            stringBuffer.append((String) next.getKey());
            stringBuffer.append("=");
            stringBuffer.append((String) next.getValue());
        }
        return stringBuffer.toString();
    }

    public static Map<String, Object> a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            hashMap.put(str, bundle.get(str));
        }
        return hashMap;
    }

    public static boolean a(HttpURLConnection httpURLConnection) {
        String contentEncoding = httpURLConnection.getContentEncoding();
        return contentEncoding != null && (contentEncoding.equals(c.ENCODING_GZIP) || contentEncoding.equals("zip") || contentEncoding.equals("application/x-gzip-compressed"));
    }

    public static byte[] a(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Bitmap) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ((Bitmap) obj).compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream2);
            objectOutputStream.writeObject(obj);
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            objectOutputStream.close();
            return byteArray;
        } catch (IOException unused) {
            return null;
        }
    }

    public static Bundle b(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        for (Map.Entry next : map.entrySet()) {
            bundle.putString((String) next.getKey(), (String) next.getValue());
        }
        return bundle;
    }

    public static DisplayMetrics b(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static String b() {
        return new GregorianCalendar().getTimeZone().getID();
    }

    public static boolean b(String str) {
        return str == null || str.isEmpty();
    }

    public static Bundle c(Map<String, Object> map) {
        Bundle bundle;
        String valueOf;
        String str;
        if (map == null) {
            return null;
        }
        try {
            bundle = new Bundle();
            try {
                for (Map.Entry next : map.entrySet()) {
                    String str2 = (String) next.getKey();
                    Object value = next.getValue();
                    if (value instanceof String) {
                        valueOf = (String) value;
                    } else if (value instanceof String[]) {
                        bundle.putStringArray(str2, (String[]) value);
                    } else if (value instanceof Boolean) {
                        bundle.putBoolean(str2, ((Boolean) value).booleanValue());
                    } else if (value instanceof boolean[]) {
                        bundle.putBooleanArray(str2, (boolean[]) value);
                    } else if (value instanceof Integer) {
                        bundle.putInt(str2, ((Integer) value).intValue());
                    } else if (value instanceof int[]) {
                        bundle.putIntArray(str2, (int[]) value);
                    } else if (value instanceof Long) {
                        bundle.putLong(str2, ((Long) value).longValue());
                    } else if (value instanceof long[]) {
                        bundle.putLongArray(str2, (long[]) value);
                    } else if (value instanceof Float) {
                        bundle.putFloat(str2, ((Float) value).floatValue());
                    } else if (value instanceof float[]) {
                        bundle.putFloatArray(str2, (float[]) value);
                    } else if (value instanceof Double) {
                        bundle.putDouble(str2, ((Double) value).doubleValue());
                    } else if (value instanceof double[]) {
                        bundle.putDoubleArray(str2, (double[]) value);
                    } else if (value instanceof Bundle) {
                        bundle.putBundle(str2, (Bundle) value);
                    } else if (value instanceof Character) {
                        bundle.putChar(str2, ((Character) value).charValue());
                    } else if (value instanceof char[]) {
                        bundle.putCharArray(str2, (char[]) value);
                    } else if (value instanceof CharSequence) {
                        bundle.putCharSequence(str2, (CharSequence) value);
                    } else if (value instanceof CharSequence[]) {
                        bundle.putCharSequenceArray(str2, (CharSequence[]) value);
                    } else if (value instanceof Byte) {
                        bundle.putByte(str2, ((Byte) value).byteValue());
                    } else if (value instanceof byte[]) {
                        bundle.putByteArray(str2, (byte[]) value);
                    } else if (value instanceof Short) {
                        bundle.putShort(str2, ((Short) value).shortValue());
                    } else if (value instanceof short[]) {
                        bundle.putShortArray(str2, (short[]) value);
                    } else if (value instanceof Parcelable) {
                        bundle.putParcelable(str2, (Parcelable) value);
                    } else if (value instanceof Serializable) {
                        bundle.putSerializable(str2, (Serializable) value);
                    } else if (value instanceof List) {
                        List list = (List) value;
                        if (list.size() > 0) {
                            Object obj = list.get(0);
                            try {
                                if (obj instanceof Integer) {
                                    bundle.putIntegerArrayList(str2, (ArrayList) list);
                                } else if (obj instanceof String) {
                                    bundle.putStringArrayList(str2, (ArrayList) list);
                                } else if (obj instanceof Parcelable) {
                                    bundle.putParcelableArrayList(str2, (ArrayList) list);
                                } else if (obj instanceof CharSequence) {
                                    bundle.putCharSequenceArrayList(str2, (ArrayList) list);
                                }
                            } catch (Exception e) {
                                e = e;
                                str = "Exception while casting list to bundle";
                                Logger.e("WebEngage", str, e);
                            }
                        } else {
                            Logger.e("WebEngage", "ArrayList size is zero for ".concat(String.valueOf(str2)));
                        }
                    } else if ((value instanceof IBinder) && Build.VERSION.SDK_INT >= 18) {
                        bundle.putBinder(str2, (IBinder) value);
                    } else if (value instanceof SparseArray) {
                        try {
                            bundle.putSparseParcelableArray(str2, (SparseArray) value);
                        } catch (Exception e2) {
                            e = e2;
                            str = "Exception while adding SparseArray to bundle";
                        }
                    } else {
                        valueOf = String.valueOf(value);
                    }
                    bundle.putString(str2, valueOf);
                }
                return bundle;
            } catch (Exception e3) {
                e = e3;
                Logger.e("WebEngage", "Exception while converting map to bundle", e);
                return bundle;
            }
        } catch (Exception e4) {
            e = e4;
            bundle = null;
            Logger.e("WebEngage", "Exception while converting map to bundle", e);
            return bundle;
        }
    }

    public static String c(Context context) {
        String str = "987" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (Build.USER.length() % 10) + (Build.DEVICE.length() % 10) + (Build.DISPLAY.length() % 10) + (Build.HOST.length() % 10) + (Build.ID.length() % 10) + (Build.MANUFACTURER.length() % 10) + (Build.MODEL.length() % 10) + (Build.PRODUCT.length() % 10) + (Build.TAGS.length() % 10) + (Build.TYPE.length() % 10);
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        String str2 = "" + str + string + "" + "";
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str2.getBytes(), 0, str2.length());
            byte[] digest = instance.digest();
            String str3 = new String();
            for (byte b2 : digest) {
                if ((b2 & com.pusher.java_websocket.drafts.c.END_OF_FRAME) <= 15) {
                    str3 = str3 + "0";
                }
                str3 = str3 + Integer.toHexString(r1);
            }
            return str3.toUpperCase();
        } catch (NoSuchAlgorithmException unused) {
            return str2;
        }
    }

    public static boolean c(String str) {
        return str == null || str.trim().isEmpty();
    }

    public static PackageInfo d(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (Exception unused) {
            return null;
        }
    }
}
