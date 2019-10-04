package com.crashlytics.android.core;

import android.os.Process;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.IdManager;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;

public class CLSUUID {
    public static String _clsId;
    public static final AtomicLong _sequenceNumber = new AtomicLong(0);

    public CLSUUID(IdManager idManager) {
        byte[] bArr = new byte[10];
        populateTime(bArr);
        populateSequenceNumber(bArr);
        populatePID(bArr);
        String c2 = CommonUtils.c(idManager.e());
        String a2 = CommonUtils.a(bArr);
        _clsId = String.format(Locale.US, "%s-%s-%s-%s", new Object[]{a2.substring(0, 12), a2.substring(12, 16), a2.subSequence(16, 20), c2.substring(0, 12)}).toUpperCase(Locale.US);
    }

    public static byte[] convertLongToFourByteBuffer(long j2) {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt((int) j2);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        return allocate.array();
    }

    public static byte[] convertLongToTwoByteBuffer(long j2) {
        ByteBuffer allocate = ByteBuffer.allocate(2);
        allocate.putShort((short) ((int) j2));
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        return allocate.array();
    }

    private void populatePID(byte[] bArr) {
        byte[] convertLongToTwoByteBuffer = convertLongToTwoByteBuffer((long) Integer.valueOf(Process.myPid()).shortValue());
        bArr[8] = convertLongToTwoByteBuffer[0];
        bArr[9] = convertLongToTwoByteBuffer[1];
    }

    private void populateSequenceNumber(byte[] bArr) {
        byte[] convertLongToTwoByteBuffer = convertLongToTwoByteBuffer(_sequenceNumber.incrementAndGet());
        bArr[6] = convertLongToTwoByteBuffer[0];
        bArr[7] = convertLongToTwoByteBuffer[1];
    }

    private void populateTime(byte[] bArr) {
        long time = new Date().getTime();
        byte[] convertLongToFourByteBuffer = convertLongToFourByteBuffer(time / 1000);
        bArr[0] = convertLongToFourByteBuffer[0];
        bArr[1] = convertLongToFourByteBuffer[1];
        bArr[2] = convertLongToFourByteBuffer[2];
        bArr[3] = convertLongToFourByteBuffer[3];
        byte[] convertLongToTwoByteBuffer = convertLongToTwoByteBuffer(time % 1000);
        bArr[4] = convertLongToTwoByteBuffer[0];
        bArr[5] = convertLongToTwoByteBuffer[1];
    }

    public String toString() {
        return _clsId;
    }
}
