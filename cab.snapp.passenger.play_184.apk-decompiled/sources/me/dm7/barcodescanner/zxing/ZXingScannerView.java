package me.dm7.barcodescanner.zxing;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.g;
import com.google.zxing.i;
import com.google.zxing.l;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.List;
import me.dm7.barcodescanner.core.BarcodeScannerView;

public class ZXingScannerView extends BarcodeScannerView {
    public static final List<BarcodeFormat> ALL_FORMATS;

    /* renamed from: b  reason: collision with root package name */
    private g f8714b;
    private List<BarcodeFormat> c;
    /* access modifiers changed from: private */
    public a d;

    public interface a {
        void handleResult(l lVar);
    }

    static {
        ArrayList arrayList = new ArrayList();
        ALL_FORMATS = arrayList;
        arrayList.add(BarcodeFormat.AZTEC);
        ALL_FORMATS.add(BarcodeFormat.CODABAR);
        ALL_FORMATS.add(BarcodeFormat.CODE_39);
        ALL_FORMATS.add(BarcodeFormat.CODE_93);
        ALL_FORMATS.add(BarcodeFormat.CODE_128);
        ALL_FORMATS.add(BarcodeFormat.DATA_MATRIX);
        ALL_FORMATS.add(BarcodeFormat.EAN_8);
        ALL_FORMATS.add(BarcodeFormat.EAN_13);
        ALL_FORMATS.add(BarcodeFormat.ITF);
        ALL_FORMATS.add(BarcodeFormat.MAXICODE);
        ALL_FORMATS.add(BarcodeFormat.PDF_417);
        ALL_FORMATS.add(BarcodeFormat.QR_CODE);
        ALL_FORMATS.add(BarcodeFormat.RSS_14);
        ALL_FORMATS.add(BarcodeFormat.RSS_EXPANDED);
        ALL_FORMATS.add(BarcodeFormat.UPC_A);
        ALL_FORMATS.add(BarcodeFormat.UPC_E);
        ALL_FORMATS.add(BarcodeFormat.UPC_EAN_EXTENSION);
    }

    public ZXingScannerView(Context context) {
        super(context);
        a();
    }

    public ZXingScannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public void setFormats(List<BarcodeFormat> list) {
        this.c = list;
        a();
    }

    public void setResultHandler(a aVar) {
        this.d = aVar;
    }

    public Collection<BarcodeFormat> getFormats() {
        List<BarcodeFormat> list = this.c;
        return list == null ? ALL_FORMATS : list;
    }

    private void a() {
        EnumMap enumMap = new EnumMap(DecodeHintType.class);
        enumMap.put(DecodeHintType.POSSIBLE_FORMATS, getFormats());
        this.f8714b = new g();
        this.f8714b.setHints(enumMap);
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x0043 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:26:0x0066 */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0052 A[Catch:{ h -> 0x0066, all -> 0x006c, k | ArrayIndexOutOfBoundsException | NullPointerException -> 0x0043, all -> 0x0049, RuntimeException -> 0x008a }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onPreviewFrame(byte[] r6, android.hardware.Camera r7) {
        /*
            r5 = this;
            me.dm7.barcodescanner.zxing.ZXingScannerView$a r0 = r5.d
            if (r0 != 0) goto L_0x0005
            return
        L_0x0005:
            android.hardware.Camera$Parameters r0 = r7.getParameters()     // Catch:{ RuntimeException -> 0x008a }
            android.hardware.Camera$Size r0 = r0.getPreviewSize()     // Catch:{ RuntimeException -> 0x008a }
            int r1 = r0.width     // Catch:{ RuntimeException -> 0x008a }
            int r0 = r0.height     // Catch:{ RuntimeException -> 0x008a }
            android.content.Context r2 = r5.getContext()     // Catch:{ RuntimeException -> 0x008a }
            int r2 = me.dm7.barcodescanner.core.d.getScreenOrientation(r2)     // Catch:{ RuntimeException -> 0x008a }
            r3 = 1
            if (r2 != r3) goto L_0x002c
            int r2 = r5.getRotationCount()     // Catch:{ RuntimeException -> 0x008a }
            if (r2 == r3) goto L_0x0025
            r3 = 3
            if (r2 != r3) goto L_0x0028
        L_0x0025:
            r4 = r1
            r1 = r0
            r0 = r4
        L_0x0028:
            byte[] r6 = r5.getRotatedData(r6, r7)     // Catch:{ RuntimeException -> 0x008a }
        L_0x002c:
            r2 = 0
            com.google.zxing.i r6 = r5.buildLuminanceSource(r6, r1, r0)     // Catch:{ RuntimeException -> 0x008a }
            if (r6 == 0) goto L_0x0073
            com.google.zxing.b r0 = new com.google.zxing.b     // Catch:{ RuntimeException -> 0x008a }
            com.google.zxing.common.i r1 = new com.google.zxing.common.i     // Catch:{ RuntimeException -> 0x008a }
            r1.<init>(r6)     // Catch:{ RuntimeException -> 0x008a }
            r0.<init>(r1)     // Catch:{ RuntimeException -> 0x008a }
            com.google.zxing.g r1 = r5.f8714b     // Catch:{ k | ArrayIndexOutOfBoundsException | NullPointerException -> 0x0043, all -> 0x0049 }
            com.google.zxing.l r2 = r1.decodeWithState(r0)     // Catch:{ k | ArrayIndexOutOfBoundsException | NullPointerException -> 0x0043, all -> 0x0049 }
        L_0x0043:
            com.google.zxing.g r0 = r5.f8714b     // Catch:{ RuntimeException -> 0x008a }
            r0.reset()     // Catch:{ RuntimeException -> 0x008a }
            goto L_0x0050
        L_0x0049:
            r6 = move-exception
            com.google.zxing.g r7 = r5.f8714b     // Catch:{ RuntimeException -> 0x008a }
            r7.reset()     // Catch:{ RuntimeException -> 0x008a }
            throw r6     // Catch:{ RuntimeException -> 0x008a }
        L_0x0050:
            if (r2 != 0) goto L_0x0073
            com.google.zxing.f r6 = r6.invert()     // Catch:{ RuntimeException -> 0x008a }
            com.google.zxing.b r0 = new com.google.zxing.b     // Catch:{ RuntimeException -> 0x008a }
            com.google.zxing.common.i r1 = new com.google.zxing.common.i     // Catch:{ RuntimeException -> 0x008a }
            r1.<init>(r6)     // Catch:{ RuntimeException -> 0x008a }
            r0.<init>(r1)     // Catch:{ RuntimeException -> 0x008a }
            com.google.zxing.g r6 = r5.f8714b     // Catch:{ h -> 0x0066, all -> 0x006c }
            com.google.zxing.l r2 = r6.decodeWithState(r0)     // Catch:{ h -> 0x0066, all -> 0x006c }
        L_0x0066:
            com.google.zxing.g r6 = r5.f8714b     // Catch:{ RuntimeException -> 0x008a }
            r6.reset()     // Catch:{ RuntimeException -> 0x008a }
            goto L_0x0073
        L_0x006c:
            r6 = move-exception
            com.google.zxing.g r7 = r5.f8714b     // Catch:{ RuntimeException -> 0x008a }
            r7.reset()     // Catch:{ RuntimeException -> 0x008a }
            throw r6     // Catch:{ RuntimeException -> 0x008a }
        L_0x0073:
            if (r2 == 0) goto L_0x0087
            android.os.Handler r6 = new android.os.Handler     // Catch:{ RuntimeException -> 0x008a }
            android.os.Looper r7 = android.os.Looper.getMainLooper()     // Catch:{ RuntimeException -> 0x008a }
            r6.<init>(r7)     // Catch:{ RuntimeException -> 0x008a }
            me.dm7.barcodescanner.zxing.ZXingScannerView$1 r7 = new me.dm7.barcodescanner.zxing.ZXingScannerView$1     // Catch:{ RuntimeException -> 0x008a }
            r7.<init>(r2)     // Catch:{ RuntimeException -> 0x008a }
            r6.post(r7)     // Catch:{ RuntimeException -> 0x008a }
            return
        L_0x0087:
            r7.setOneShotPreviewCallback(r5)     // Catch:{ RuntimeException -> 0x008a }
        L_0x008a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: me.dm7.barcodescanner.zxing.ZXingScannerView.onPreviewFrame(byte[], android.hardware.Camera):void");
    }

    public void resumeCameraPreview(a aVar) {
        this.d = aVar;
        if (this.f8701a != null) {
            this.f8701a.showCameraPreview();
        }
    }

    public i buildLuminanceSource(byte[] bArr, int i, int i2) {
        Rect framingRectInPreview = getFramingRectInPreview(i, i2);
        i iVar = null;
        if (framingRectInPreview == null) {
            return null;
        }
        try {
            i iVar2 = new i(bArr, i, i2, framingRectInPreview.left, framingRectInPreview.top, framingRectInPreview.width(), framingRectInPreview.height(), false);
            iVar = iVar2;
        } catch (Exception unused) {
        }
        return iVar;
    }
}
