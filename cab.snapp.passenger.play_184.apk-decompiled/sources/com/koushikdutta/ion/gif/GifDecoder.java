package com.koushikdutta.ion.gif;

import android.graphics.Bitmap;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.fragment.app.FragmentTransaction;
import com.pusher.java_websocket.drafts.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

public class GifDecoder implements Cloneable {
    private static final int MaxStackSize = 4096;
    public static final int STATUS_FINISH = -1;
    public static final int STATUS_FORMAT_ERROR = 1;
    public static final int STATUS_OPEN_ERROR = 2;
    public static final int STATUS_PARSING = 0;
    private int[] act;
    private int bgColor;
    private int bgIndex;
    private byte[] block;
    private int blockSize;
    private int currentFrame;
    private int delay;
    int[] dest;
    private int dispose;
    private int[] gct;
    private boolean gctFlag;
    private int gctSize;
    private byte[] gifData;
    private int gifDataLength;
    private int gifDataOffset;
    public int height;
    private int ih;
    private boolean interlace;
    private int iw;
    private int ix;
    private int iy;
    private int lastBgColor;
    private int lastDispose;
    GifFrame lastFrame;
    private int[] lct;
    private boolean lctFlag;
    private int lctSize;
    private int loopCount;
    private int lrh;
    private int lrw;
    private int lrx;
    private int lry;
    private int pixelAspect;
    private byte[] pixelStack;
    private byte[] pixels;
    private int pixelsTrimIndex;
    private short[] prefix;
    private int readBytes;
    GifFrame restoreFrame;
    private int status;
    private byte[] suffix;
    private int transIndex;
    private boolean transparency;
    public int width;

    public GifDecoder mutate() {
        try {
            GifDecoder gifDecoder = (GifDecoder) clone();
            this.block = new byte[256];
            this.prefix = null;
            this.suffix = null;
            this.pixelStack = null;
            this.pixels = null;
            this.dest = null;
            return gifDecoder;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public ByteBuffer getByteBuffer() {
        return ByteBuffer.wrap(this.gifData, this.gifDataOffset, this.gifDataLength);
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public int getGifDataLength() {
        return this.gifDataLength;
    }

    public GifFrame getLastFrame() {
        return this.lastFrame;
    }

    public GifDecoder(ByteBuffer byteBuffer) {
        this(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
    }

    public GifDecoder(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public GifDecoder(byte[] bArr, int i, int i2) {
        this.loopCount = 1;
        this.block = new byte[256];
        this.blockSize = 0;
        this.dispose = 0;
        this.lastDispose = 0;
        this.transparency = false;
        this.delay = 0;
        this.gifData = null;
        this.pixelsTrimIndex = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.gifData = bArr;
        this.gifDataOffset = i;
        this.gifDataLength = i2;
        restart();
    }

    public void restart() {
        this.readBytes = 0;
        this.status = 0;
        this.gct = null;
        this.lct = null;
        readHeader();
    }

    public synchronized GifFrame nextFrame() {
        while (!err() && this.status == 0) {
            int read = read();
            if (read != 0) {
                if (read == 33) {
                    int read2 = read();
                    if (read2 == 249) {
                        readGraphicControlExt();
                    } else if (read2 != 255) {
                        skip();
                    } else {
                        readBlock();
                        String str = "";
                        for (int i = 0; i < 11; i++) {
                            str = str + ((char) this.block[i]);
                        }
                        if (str.equals("NETSCAPE2.0")) {
                            readNetscapeExt();
                        } else {
                            skip();
                        }
                    }
                } else if (read == 44) {
                    GifFrame readImage = readImage();
                    this.lastFrame = readImage;
                    return readImage;
                } else if (read != 59) {
                    this.status = 1;
                } else {
                    this.status = -1;
                    return null;
                }
            }
        }
        this.status = 1;
        return null;
    }

    public int getStatus() {
        return this.status;
    }

    public boolean parseOk() {
        return this.status == -1;
    }

    public int getLoopCount() {
        return this.loopCount;
    }

    private Bitmap setPixels() {
        int i;
        int i2 = this.lastDispose;
        int i3 = 0;
        if (i2 == 2) {
            if (this.dest == null) {
                this.dest = new int[(this.width * this.height)];
            }
            Arrays.fill(this.dest, !this.transparency ? this.lastBgColor : 0);
        } else {
            int[] iArr = this.dest;
            if (iArr == null) {
                this.dest = new int[(this.width * this.height)];
                GifFrame gifFrame = this.restoreFrame;
                if (gifFrame != null) {
                    Bitmap bitmap = gifFrame.image;
                    int[] iArr2 = this.dest;
                    int i4 = this.width;
                    bitmap.getPixels(iArr2, 0, i4, 0, 0, i4, this.height);
                } else {
                    Arrays.fill(this.dest, 0);
                }
            } else if (i2 == 3) {
                GifFrame gifFrame2 = this.restoreFrame;
                if (gifFrame2 != null) {
                    Bitmap bitmap2 = gifFrame2.image;
                    int[] iArr3 = this.dest;
                    int i5 = this.width;
                    bitmap2.getPixels(iArr3, 0, i5, 0, 0, i5, this.height);
                } else {
                    Arrays.fill(iArr, 0);
                }
            }
        }
        int i6 = 0;
        int i7 = 1;
        int i8 = 8;
        while (true) {
            int i9 = this.ih;
            if (i3 >= i9) {
                return Bitmap.createBitmap(this.dest, this.width, this.height, Bitmap.Config.ARGB_4444);
            }
            if (this.interlace) {
                if (i6 >= i9) {
                    i7++;
                    if (i7 == 2) {
                        i6 = 4;
                    } else if (i7 == 3) {
                        i6 = 2;
                        i8 = 4;
                    } else if (i7 == 4) {
                        i6 = 1;
                        i8 = 2;
                    }
                }
                i = i6 + i8;
            } else {
                i = i6;
                i6 = i3;
            }
            int i10 = i6 + this.iy;
            if (i10 < this.height) {
                int i11 = this.width;
                int i12 = i10 * i11;
                int i13 = this.ix + i12;
                int i14 = this.iw + i13;
                if (i12 + i11 < i14) {
                    i14 = i12 + i11;
                }
                int i15 = this.iw * i3;
                while (i13 < i14 && i15 < this.pixelsTrimIndex) {
                    int i16 = i15 + 1;
                    byte b2 = this.pixels[i15] & c.END_OF_FRAME;
                    if (!this.transparency || b2 != this.transIndex) {
                        this.dest[i13] = this.act[b2];
                    }
                    i13++;
                    i15 = i16;
                }
            }
            i3++;
            i6 = i;
        }
    }

    private void decodeImageData() {
        int i;
        int i2;
        int i3;
        int i4;
        short s;
        int i5 = this.iw * this.ih;
        byte[] bArr = this.pixels;
        if (bArr == null || bArr.length < i5) {
            this.pixels = new byte[i5];
        }
        if (this.prefix == null) {
            this.prefix = new short[4096];
        }
        if (this.suffix == null) {
            this.suffix = new byte[4096];
        }
        if (this.pixelStack == null) {
            this.pixelStack = new byte[FragmentTransaction.TRANSIT_FRAGMENT_OPEN];
        }
        int read = read();
        int i6 = 1 << read;
        int i7 = i6 + 1;
        int i8 = i6 + 2;
        int i9 = read + 1;
        int i10 = (1 << i9) - 1;
        for (int i11 = 0; i11 < i6; i11++) {
            this.prefix[i11] = 0;
            this.suffix[i11] = (byte) i11;
        }
        int i12 = i9;
        int i13 = i8;
        int i14 = i10;
        byte b2 = -1;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        byte b3 = 0;
        int i21 = 0;
        while (i15 < i5) {
            if (i16 == 0) {
                if (i17 >= i12) {
                    byte b4 = i18 & i14;
                    i18 >>= i12;
                    i17 -= i12;
                    if (b4 <= i13 && b4 != i7) {
                        if (b4 != i6) {
                            if (b2 != -1) {
                                i3 = i5;
                                if (b4 == i13) {
                                    i4 = i16 + 1;
                                    i2 = i9;
                                    this.pixelStack[i16] = (byte) b3;
                                    s = b2;
                                } else {
                                    i2 = i9;
                                    s = b4;
                                    i4 = i16;
                                }
                                while (s > i6) {
                                    this.pixelStack[i4] = this.suffix[s];
                                    s = this.prefix[s];
                                    i4++;
                                    b4 = b4;
                                }
                                byte b5 = b4;
                                byte[] bArr2 = this.suffix;
                                byte b6 = bArr2[s] & c.END_OF_FRAME;
                                if (i13 >= 4096) {
                                    break;
                                }
                                i16 = i4 + 1;
                                i = i6;
                                byte b7 = (byte) b6;
                                this.pixelStack[i4] = b7;
                                this.prefix[i13] = (short) b2;
                                bArr2[i13] = b7;
                                i13++;
                                if ((i13 & i14) == 0 && i13 < 4096) {
                                    i12++;
                                    i14 += i13;
                                }
                                b2 = b5;
                                b3 = b6;
                            } else {
                                this.pixelStack[i16] = this.suffix[b4];
                                b2 = b4;
                                b3 = b2;
                                i16++;
                                i5 = i5;
                            }
                        } else {
                            i12 = i9;
                            i13 = i8;
                            i14 = i10;
                            b2 = -1;
                        }
                    } else {
                        break;
                    }
                } else {
                    if (i19 == 0) {
                        i19 = readBlock();
                        if (i19 <= 0) {
                            break;
                        }
                        i20 = 0;
                    }
                    i18 += (this.block[i20] & c.END_OF_FRAME) << i17;
                    i17 += 8;
                    i20++;
                    i19--;
                }
            } else {
                i3 = i5;
                i2 = i9;
                i = i6;
                byte b8 = b3;
            }
            i16--;
            int i22 = i21;
            i21 = i22 + 1;
            this.pixels[i22] = this.pixelStack[i16];
            i15++;
            i5 = i3;
            i9 = i2;
            i6 = i;
        }
        this.pixelsTrimIndex = i21;
    }

    private boolean err() {
        return this.status != 0;
    }

    private int read() {
        int i = this.readBytes;
        if (i >= this.gifDataLength) {
            return 0;
        }
        byte[] bArr = this.gifData;
        int i2 = this.gifDataOffset;
        this.readBytes = i + 1;
        return bArr[i2 + i] & c.END_OF_FRAME;
    }

    private int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.readBytes;
        int i4 = this.gifDataLength;
        if (i3 >= i4) {
            return -1;
        }
        int min = Math.min(i4 - i3, i2);
        System.arraycopy(this.gifData, this.gifDataOffset + this.readBytes, bArr, i, min);
        this.readBytes += min;
        return min;
    }

    private int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    private int readBlock() {
        this.blockSize = read();
        int i = 0;
        if (this.blockSize > 0) {
            while (i < this.blockSize) {
                try {
                    int read = read(this.block, i, this.blockSize - i);
                    if (read == -1) {
                        break;
                    }
                    i += read;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (i < this.blockSize) {
                this.status = 1;
            }
        }
        return i;
    }

    private int[] readColorTable(int i) {
        int i2;
        int i3 = i * 3;
        byte[] bArr = new byte[i3];
        try {
            i2 = read(bArr);
        } catch (Exception e) {
            e.printStackTrace();
            i2 = 0;
        }
        if (i2 < i3) {
            this.status = 1;
            return null;
        }
        int[] iArr = new int[256];
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            int i6 = i4 + 1;
            int i7 = i6 + 1;
            iArr[i5] = ((bArr[i4] & c.END_OF_FRAME) << 16) | -16777216 | ((bArr[i6] & c.END_OF_FRAME) << 8) | (bArr[i7] & c.END_OF_FRAME);
            i4 = i7 + 1;
        }
        return iArr;
    }

    private void readGraphicControlExt() {
        read();
        int read = read();
        this.dispose = (read & 28) >> 2;
        boolean z = true;
        if (this.dispose == 0) {
            this.dispose = 1;
        }
        if ((read & 1) == 0) {
            z = false;
        }
        this.transparency = z;
        this.delay = readShort() * 10;
        this.transIndex = read();
        read();
    }

    private void readHeader() {
        String str = "";
        for (int i = 0; i < 6; i++) {
            str = str + ((char) read());
        }
        if (!str.startsWith("GIF")) {
            this.status = 1;
            return;
        }
        readLSD();
        if (this.gctFlag && !err()) {
            this.gct = readColorTable(this.gctSize);
            this.bgColor = this.gct[this.bgIndex];
        }
    }

    private GifFrame readImage() {
        this.ix = readShort();
        this.iy = readShort();
        this.iw = readShort();
        this.ih = readShort();
        int read = read();
        this.lctFlag = (read & 128) != 0;
        this.interlace = (read & 64) != 0;
        this.lctSize = 2 << (read & 7);
        if (this.lctFlag) {
            this.lct = readColorTable(this.lctSize);
            this.act = this.lct;
        } else {
            this.act = this.gct;
            if (this.bgIndex == this.transIndex) {
                this.bgColor = 0;
            }
        }
        if (this.act == null) {
            this.status = 1;
        }
        if (err()) {
            return null;
        }
        decodeImageData();
        skip();
        if (err()) {
            return null;
        }
        this.currentFrame++;
        GifFrame gifFrame = new GifFrame(setPixels(), this.delay);
        resetFrame(gifFrame);
        return gifFrame;
    }

    private void readLSD() {
        this.width = readShort();
        this.height = readShort();
        int read = read();
        this.gctFlag = (read & 128) != 0;
        this.gctSize = 2 << (read & 7);
        this.bgIndex = read();
        this.pixelAspect = read();
    }

    private void readNetscapeExt() {
        do {
            readBlock();
            byte[] bArr = this.block;
            if (bArr[0] == 1) {
                this.loopCount = ((bArr[2] & c.END_OF_FRAME) << 8) | (bArr[1] & c.END_OF_FRAME);
            }
            if (this.blockSize <= 0) {
                return;
            }
        } while (!err());
    }

    private int readShort() {
        return read() | (read() << 8);
    }

    private void resetFrame(GifFrame gifFrame) {
        int i = this.dispose;
        if (i == 0) {
            this.restoreFrame = gifFrame;
        } else if (i == 1) {
            this.restoreFrame = gifFrame;
        } else if (i == 2) {
            this.restoreFrame = null;
        } else if (i != 3) {
            new StringBuilder("Unknown gif dispose code: ").append(this.lastDispose);
        }
        this.lastDispose = this.dispose;
        this.lrx = this.ix;
        this.lry = this.iy;
        this.lrw = this.iw;
        this.lrh = this.ih;
        this.lastBgColor = this.bgColor;
        this.dispose = 0;
        this.transparency = false;
        this.delay = 0;
        this.lct = null;
        this.pixelsTrimIndex = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    private void skip() {
        do {
            readBlock();
            if (this.blockSize <= 0) {
                return;
            }
        } while (!err());
    }
}
