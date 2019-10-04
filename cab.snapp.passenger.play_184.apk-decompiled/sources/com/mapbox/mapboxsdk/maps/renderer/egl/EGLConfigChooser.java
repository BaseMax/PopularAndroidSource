package com.mapbox.mapboxsdk.maps.renderer.egl;

import android.opengl.GLSurfaceView;
import android.os.Build;
import androidx.core.os.EnvironmentCompat;
import com.mapbox.mapboxsdk.constants.MapboxConstants;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.utils.Compare;
import io.fabric.sdk.android.services.common.i;
import java.util.ArrayList;
import java.util.Collections;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

public class EGLConfigChooser implements GLSurfaceView.EGLConfigChooser {
    private static final int EGL_CONFORMANT = 12354;
    private static final int EGL_OPENGL_ES2_BIT = 4;
    private static final String TAG = "Mbgl-EGLConfigChooser";
    private boolean translucentSurface;

    enum BufferFormat {
        Format16Bit(3),
        Format32BitNoAlpha(1),
        Format32BitAlpha(2),
        Format24Bit(0),
        Unknown(4);
        
        int value;

        private BufferFormat(int i) {
            this.value = i;
        }
    }

    enum DepthStencilFormat {
        Format16Depth8Stencil(1),
        Format24Depth8Stencil(0);
        
        int value;

        private DepthStencilFormat(int i) {
            this.value = i;
        }
    }

    public EGLConfigChooser() {
        this(false);
    }

    public EGLConfigChooser(boolean z) {
        this.translucentSurface = z;
    }

    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
        int[] configAttributes = getConfigAttributes();
        int[] numberOfConfigurations = getNumberOfConfigurations(egl10, eGLDisplay, configAttributes);
        if (numberOfConfigurations[0] > 0) {
            EGLConfig chooseBestMatchConfig = chooseBestMatchConfig(egl10, eGLDisplay, getPossibleConfigurations(egl10, eGLDisplay, configAttributes, numberOfConfigurations));
            if (chooseBestMatchConfig != null) {
                return chooseBestMatchConfig;
            }
            Logger.e(TAG, "No config chosen");
            throw new EGLConfigException("No config chosen");
        }
        Logger.e(TAG, "eglChooseConfig() returned no configs.");
        throw new EGLConfigException("eglChooseConfig() failed");
    }

    private int[] getNumberOfConfigurations(EGL10 egl10, EGLDisplay eGLDisplay, int[] iArr) {
        int[] iArr2 = new int[1];
        if (egl10.eglChooseConfig(eGLDisplay, iArr, null, 0, iArr2)) {
            return iArr2;
        }
        Logger.e(TAG, String.format(MapboxConstants.MAPBOX_LOCALE, "eglChooseConfig(NULL) returned error %d", new Object[]{Integer.valueOf(egl10.eglGetError())}));
        throw new EGLConfigException("eglChooseConfig() failed");
    }

    private EGLConfig[] getPossibleConfigurations(EGL10 egl10, EGLDisplay eGLDisplay, int[] iArr, int[] iArr2) {
        EGLConfig[] eGLConfigArr = new EGLConfig[iArr2[0]];
        if (egl10.eglChooseConfig(eGLDisplay, iArr, eGLConfigArr, iArr2[0], iArr2)) {
            return eGLConfigArr;
        }
        Logger.e(TAG, String.format(MapboxConstants.MAPBOX_LOCALE, "eglChooseConfig() returned error %d", new Object[]{Integer.valueOf(egl10.eglGetError())}));
        throw new EGLConfigException("eglChooseConfig() failed");
    }

    private EGLConfig chooseBestMatchConfig(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
        BufferFormat bufferFormat;
        DepthStencilFormat depthStencilFormat;
        EGLConfigChooser eGLConfigChooser = this;
        EGL10 egl102 = egl10;
        EGLDisplay eGLDisplay2 = eGLDisplay;
        EGLConfig[] eGLConfigArr2 = eGLConfigArr;
        ArrayList arrayList = new ArrayList();
        int length = eGLConfigArr2.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            EGLConfig eGLConfig = eGLConfigArr2[i2];
            int i3 = i + 1;
            int configAttr = eGLConfigChooser.getConfigAttr(egl102, eGLDisplay2, eGLConfig, 12327);
            int configAttr2 = eGLConfigChooser.getConfigAttr(egl102, eGLDisplay2, eGLConfig, EGL_CONFORMANT);
            int configAttr3 = eGLConfigChooser.getConfigAttr(egl102, eGLDisplay2, eGLConfig, 12320);
            int configAttr4 = eGLConfigChooser.getConfigAttr(egl102, eGLDisplay2, eGLConfig, 12324);
            int configAttr5 = eGLConfigChooser.getConfigAttr(egl102, eGLDisplay2, eGLConfig, 12323);
            int configAttr6 = eGLConfigChooser.getConfigAttr(egl102, eGLDisplay2, eGLConfig, 12322);
            int configAttr7 = eGLConfigChooser.getConfigAttr(egl102, eGLDisplay2, eGLConfig, 12321);
            eGLConfigChooser.getConfigAttr(egl102, eGLDisplay2, eGLConfig, 12350);
            int configAttr8 = eGLConfigChooser.getConfigAttr(egl102, eGLDisplay2, eGLConfig, 12325);
            int configAttr9 = eGLConfigChooser.getConfigAttr(egl102, eGLDisplay2, eGLConfig, 12326);
            int i4 = length;
            int i5 = i2;
            if (((configAttr8 == 24 || configAttr8 == 16) & (configAttr9 == 8) & (eGLConfigChooser.getConfigAttr(egl102, eGLDisplay2, eGLConfig, 12338) == 0)) && (eGLConfigChooser.getConfigAttr(egl102, eGLDisplay2, eGLConfig, 12337) == 0)) {
                if (configAttr3 == 16 && configAttr4 == 5 && configAttr5 == 6 && configAttr6 == 5 && configAttr7 == 0) {
                    bufferFormat = BufferFormat.Format16Bit;
                } else if (configAttr3 == 32 && configAttr4 == 8 && configAttr5 == 8 && configAttr6 == 8 && configAttr7 == 0) {
                    bufferFormat = BufferFormat.Format32BitNoAlpha;
                } else if (configAttr3 == 32 && configAttr4 == 8 && configAttr5 == 8 && configAttr6 == 8 && configAttr7 == 8) {
                    bufferFormat = BufferFormat.Format32BitAlpha;
                } else if (configAttr3 == 24 && configAttr4 == 8 && configAttr5 == 8 && configAttr6 == 8 && configAttr7 == 0) {
                    bufferFormat = BufferFormat.Format24Bit;
                } else {
                    bufferFormat = BufferFormat.Unknown;
                }
                BufferFormat bufferFormat2 = bufferFormat;
                if (configAttr8 == 16 && configAttr9 == 8) {
                    depthStencilFormat = DepthStencilFormat.Format16Depth8Stencil;
                } else {
                    depthStencilFormat = DepthStencilFormat.Format24Depth8Stencil;
                }
                DepthStencilFormat depthStencilFormat2 = depthStencilFormat;
                boolean z = (configAttr2 & 4) != 4;
                boolean z2 = configAttr != 12344;
                if (bufferFormat2 != BufferFormat.Unknown) {
                    AnonymousClass1Config r0 = new Comparable<AnonymousClass1Config>(bufferFormat2, depthStencilFormat2, z, z2, i3, eGLConfig) {
                        private final BufferFormat bufferFormat;
                        /* access modifiers changed from: private */
                        public final EGLConfig config;
                        private final DepthStencilFormat depthStencilFormat;
                        private final int index;
                        /* access modifiers changed from: private */
                        public final boolean isCaveat;
                        /* access modifiers changed from: private */
                        public final boolean isNotConformant;

                        {
                            this.bufferFormat = r2;
                            this.depthStencilFormat = r3;
                            this.isNotConformant = r4;
                            this.isCaveat = r5;
                            this.index = r6;
                            this.config = r7;
                        }

                        public int compareTo(AnonymousClass1Config r3) {
                            int compare = Compare.compare(this.bufferFormat.value, r3.bufferFormat.value);
                            if (compare != 0) {
                                return compare;
                            }
                            int compare2 = Compare.compare(this.depthStencilFormat.value, r3.depthStencilFormat.value);
                            if (compare2 != 0) {
                                return compare2;
                            }
                            int compare3 = Compare.compare(this.isNotConformant, r3.isNotConformant);
                            if (compare3 != 0) {
                                return compare3;
                            }
                            int compare4 = Compare.compare(this.isCaveat, r3.isCaveat);
                            if (compare4 != 0) {
                                return compare4;
                            }
                            int compare5 = Compare.compare(this.index, r3.index);
                            if (compare5 != 0) {
                                return compare5;
                            }
                            return 0;
                        }
                    };
                    arrayList.add(r0);
                }
            }
            i2 = i5 + 1;
            eGLConfigChooser = this;
            egl102 = egl10;
            eGLConfigArr2 = eGLConfigArr;
            i = i3;
            length = i4;
        }
        Collections.sort(arrayList);
        if (arrayList.size() != 0) {
            AnonymousClass1Config r02 = (AnonymousClass1Config) arrayList.get(0);
            if (r02.isCaveat) {
                Logger.w(TAG, "Chosen config has a caveat.");
            }
            if (r02.isNotConformant) {
                Logger.w(TAG, "Chosen config is not conformant.");
            }
            return r02.config;
        }
        throw new EGLConfigException("No matching configurations after filtering");
    }

    private int getConfigAttr(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i) {
        int[] iArr = new int[1];
        if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, iArr)) {
            return iArr[0];
        }
        Logger.e(TAG, String.format(MapboxConstants.MAPBOX_LOCALE, "eglGetConfigAttrib(%d) returned error %d", new Object[]{Integer.valueOf(i), Integer.valueOf(egl10.eglGetError())}));
        throw new EGLConfigException("eglGetConfigAttrib() failed");
    }

    private int[] getConfigAttributes() {
        int i = 0;
        boolean z = inEmulator() || inGenymotion();
        Logger.i(TAG, String.format("In emulator: %s", new Object[]{Boolean.valueOf(z)}));
        int[] iArr = new int[25];
        iArr[0] = 12327;
        iArr[1] = 12344;
        iArr[2] = 12339;
        iArr[3] = 4;
        iArr[4] = 12320;
        iArr[5] = 16;
        iArr[6] = 12324;
        iArr[7] = 5;
        iArr[8] = 12323;
        iArr[9] = 6;
        iArr[10] = 12322;
        iArr[11] = 5;
        iArr[12] = 12321;
        if (this.translucentSurface) {
            i = 8;
        }
        iArr[13] = i;
        iArr[14] = 12325;
        iArr[15] = 16;
        iArr[16] = 12326;
        iArr[17] = 8;
        iArr[18] = z ? 12344 : EGL_CONFORMANT;
        iArr[19] = 4;
        iArr[20] = z ? 12344 : 12351;
        iArr[21] = 12430;
        iArr[22] = 12352;
        iArr[23] = 4;
        iArr[24] = 12344;
        return iArr;
    }

    private boolean inEmulator() {
        return Build.FINGERPRINT.startsWith("generic") || Build.FINGERPRINT.startsWith(EnvironmentCompat.MEDIA_UNKNOWN) || Build.MODEL.contains(i.GOOGLE_SDK) || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || i.GOOGLE_SDK.equals(Build.PRODUCT) || System.getProperty("ro.kernel.qemu") != null;
    }

    private boolean inGenymotion() {
        return Build.MANUFACTURER.contains("Genymotion");
    }
}
