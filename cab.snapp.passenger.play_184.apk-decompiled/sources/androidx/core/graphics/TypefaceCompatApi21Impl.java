package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import androidx.core.content.res.FontResourcesParserCompat;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class TypefaceCompatApi21Impl extends TypefaceCompatBaseImpl {
    private static final String ADD_FONT_WEIGHT_STYLE_METHOD = "addFontWeightStyle";
    private static final String CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD = "createFromFamiliesWithDefault";
    private static final String FONT_FAMILY_CLASS = "android.graphics.FontFamily";
    private static final String TAG = "TypefaceCompatApi21Impl";
    private static Method sAddFontWeightStyle = null;
    private static Method sCreateFromFamiliesWithDefault = null;
    private static Class sFontFamily = null;
    private static Constructor sFontFamilyCtor = null;
    private static boolean sHasInitBeenCalled = false;

    TypefaceCompatApi21Impl() {
    }

    private static void init() {
        Method method;
        Class<?> cls;
        Method method2;
        if (!sHasInitBeenCalled) {
            sHasInitBeenCalled = true;
            Constructor<?> constructor = null;
            try {
                cls = Class.forName(FONT_FAMILY_CLASS);
                Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
                method = cls.getMethod(ADD_FONT_WEIGHT_STYLE_METHOD, new Class[]{String.class, Integer.TYPE, Boolean.TYPE});
                method2 = Typeface.class.getMethod(CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD, new Class[]{Array.newInstance(cls, 1).getClass()});
                constructor = constructor2;
            } catch (ClassNotFoundException | NoSuchMethodException e) {
                e.getClass().getName();
                method2 = null;
                cls = null;
                method = null;
            }
            sFontFamilyCtor = constructor;
            sFontFamily = cls;
            sAddFontWeightStyle = method;
            sCreateFromFamiliesWithDefault = method2;
        }
    }

    private File getFile(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
        } catch (ErrnoException unused) {
        }
        return null;
    }

    private static Object newFamily() {
        init();
        try {
            return sFontFamilyCtor.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    private static Typeface createFromFamiliesWithDefault(Object obj) {
        init();
        try {
            Object newInstance = Array.newInstance(sFontFamily, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) sCreateFromFamiliesWithDefault.invoke(null, new Object[]{newInstance});
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    private static boolean addFontWeightStyle(Object obj, String str, int i, boolean z) {
        init();
        try {
            return ((Boolean) sAddFontWeightStyle.invoke(obj, new Object[]{str, Integer.valueOf(i), Boolean.valueOf(z)})).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:0x004e, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:?, code lost:
        r5.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:?, code lost:
        throw r3;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:37:0x0052 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:46:0x005b */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.Typeface createFromFontInfo(android.content.Context r3, android.os.CancellationSignal r4, androidx.core.provider.FontsContractCompat.FontInfo[] r5, int r6) {
        /*
            r2 = this;
            int r0 = r5.length
            r1 = 0
            if (r0 > 0) goto L_0x0005
            return r1
        L_0x0005:
            androidx.core.provider.FontsContractCompat$FontInfo r5 = r2.findBestInfo(r5, r6)
            android.content.ContentResolver r6 = r3.getContentResolver()
            android.net.Uri r5 = r5.getUri()     // Catch:{ IOException -> 0x005c }
            java.lang.String r0 = "r"
            android.os.ParcelFileDescriptor r4 = r6.openFileDescriptor(r5, r0, r4)     // Catch:{ IOException -> 0x005c }
            if (r4 != 0) goto L_0x001f
            if (r4 == 0) goto L_0x001e
            r4.close()     // Catch:{ IOException -> 0x005c }
        L_0x001e:
            return r1
        L_0x001f:
            java.io.File r5 = r2.getFile(r4)     // Catch:{ all -> 0x0053 }
            if (r5 == 0) goto L_0x0036
            boolean r6 = r5.canRead()     // Catch:{ all -> 0x0053 }
            if (r6 != 0) goto L_0x002c
            goto L_0x0036
        L_0x002c:
            android.graphics.Typeface r3 = android.graphics.Typeface.createFromFile(r5)     // Catch:{ all -> 0x0053 }
            if (r4 == 0) goto L_0x0035
            r4.close()     // Catch:{ IOException -> 0x005c }
        L_0x0035:
            return r3
        L_0x0036:
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch:{ all -> 0x0053 }
            java.io.FileDescriptor r6 = r4.getFileDescriptor()     // Catch:{ all -> 0x0053 }
            r5.<init>(r6)     // Catch:{ all -> 0x0053 }
            android.graphics.Typeface r3 = super.createFromInputStream(r3, r5)     // Catch:{ all -> 0x004c }
            r5.close()     // Catch:{ all -> 0x0053 }
            if (r4 == 0) goto L_0x004b
            r4.close()     // Catch:{ IOException -> 0x005c }
        L_0x004b:
            return r3
        L_0x004c:
            r3 = move-exception
            throw r3     // Catch:{ all -> 0x004e }
        L_0x004e:
            r3 = move-exception
            r5.close()     // Catch:{ all -> 0x0052 }
        L_0x0052:
            throw r3     // Catch:{ all -> 0x0053 }
        L_0x0053:
            r3 = move-exception
            throw r3     // Catch:{ all -> 0x0055 }
        L_0x0055:
            r3 = move-exception
            if (r4 == 0) goto L_0x005b
            r4.close()     // Catch:{ all -> 0x005b }
        L_0x005b:
            throw r3     // Catch:{ IOException -> 0x005c }
        L_0x005c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.TypefaceCompatApi21Impl.createFromFontInfo(android.content.Context, android.os.CancellationSignal, androidx.core.provider.FontsContractCompat$FontInfo[], int):android.graphics.Typeface");
    }

    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        Object newFamily = newFamily();
        FontResourcesParserCompat.FontFileResourceEntry[] entries = fontFamilyFilesResourceEntry.getEntries();
        int length = entries.length;
        int i2 = 0;
        while (i2 < length) {
            FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry = entries[i2];
            File tempFile = TypefaceCompatUtil.getTempFile(context);
            if (tempFile == null) {
                return null;
            }
            try {
                if (!TypefaceCompatUtil.copyToFile(tempFile, resources, fontFileResourceEntry.getResourceId())) {
                    tempFile.delete();
                    return null;
                } else if (!addFontWeightStyle(newFamily, tempFile.getPath(), fontFileResourceEntry.getWeight(), fontFileResourceEntry.isItalic())) {
                    return null;
                } else {
                    tempFile.delete();
                    i2++;
                }
            } catch (RuntimeException unused) {
                return null;
            } finally {
                tempFile.delete();
            }
        }
        return createFromFamiliesWithDefault(newFamily);
    }
}
