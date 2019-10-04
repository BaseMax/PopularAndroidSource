.class public Lcom/apptentive/android/sdk/util/image/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/util/image/ImageUtil$DownloadImageTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendScaledDownImageToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    .line 314
    invoke-virtual {v2, v3, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 316
    invoke-static {v2}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 322
    :try_start_1
    new-instance v4, Lcom/apptentive/android/sdk/util/CountingOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Lcom/apptentive/android/sdk/util/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 323
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V

    const/16 p1, 0x400

    .line 324
    invoke-static {p0, p1, p1, v3, v2}, Lcom/apptentive/android/sdk/util/image/ImageUtil;->createScaledBitmapFromLocalImageSource(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 325
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 326
    invoke-virtual {v4}, Lcom/apptentive/android/sdk/util/CountingOutputStream;->flush()V

    .line 327
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bitmap bytes appended, size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/apptentive/android/sdk/util/CountingOutputStream;->getBytesWritten()I

    move-result v5

    div-int/2addr v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "k"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    invoke-static {v4}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v4, v3

    goto :goto_2

    :catch_2
    move-exception p0

    .line 331
    :goto_1
    :try_start_3
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Error storing image."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, v0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->a(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 335
    invoke-static {v3}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    return v1

    :goto_2
    invoke-static {v4}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static calculateBitmapScaleFactor(IIII)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    if-gtz p2, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    int-to-float p0, p0

    div-float p0, p2, p0

    :goto_0
    if-gtz p3, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    int-to-float p2, p3

    int-to-float p1, p1

    div-float p1, p2, p1

    .line 249
    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 1

    .line 48
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 49
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p2, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 55
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 56
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-ge p2, p0, :cond_2

    move p0, p2

    :cond_2
    :goto_1
    return p0
.end method

.method private static createLightweightScaledBitmap(Ljava/lang/String;Landroid/net/Uri;IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    .line 82
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v4

    invoke-interface {v4}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    const/4 v8, 0x0

    .line 91
    :goto_0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-eqz v2, :cond_1

    .line 93
    iput-object v2, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 96
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 97
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 98
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz v8, :cond_2

    if-eqz v4, :cond_2

    .line 104
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    :try_start_1
    invoke-static {v10, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-static {v10}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v6, v10

    goto :goto_2

    :catch_0
    move-object v6, v10

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 107
    :catch_1
    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Failed to decode image"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    :goto_2
    invoke-static {v6}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    if-nez v8, :cond_3

    .line 112
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :cond_3
    :goto_3
    const/16 v10, 0x5a

    if-eq v3, v10, :cond_5

    const/16 v10, 0x10e

    if-ne v3, v10, :cond_4

    goto :goto_4

    .line 124
    :cond_4
    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 125
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_5

    .line 120
    :cond_5
    :goto_4
    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 122
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 128
    :goto_5
    sget-object v11, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v12, "Original bitmap dimensions: %d x %d"

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v5

    invoke-static {v11, v12, v14}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    div-int v10, v10, p2

    div-int v2, v2, p3

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lt v2, v13, :cond_6

    .line 131
    iput v2, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 133
    :cond_6
    iput-boolean v7, v9, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 134
    iput-boolean v7, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 135
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v10, "Bitmap sample size = %d"

    new-array v11, v5, [Ljava/lang/Object;

    iget v12, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {v2, v10, v11}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v8, :cond_7

    if-eqz v4, :cond_7

    .line 141
    :try_start_3
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 142
    :try_start_4
    invoke-static {v1, v6, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 146
    invoke-static {v1}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_7

    :catch_2
    move-object v6, v1

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_7

    .line 144
    :catch_3
    :goto_6
    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Failed to decode image"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 146
    :goto_7
    invoke-static {v6}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    throw v0

    :cond_7
    if-nez v8, :cond_8

    .line 149
    invoke-static {v0, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_8
    :goto_8
    move-object v14, v6

    .line 153
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Sampled bitmap size = %d X %d"

    new-array v2, v13, [Ljava/lang/Object;

    iget v4, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    iget v4, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_c

    const/4 v0, -0x1

    if-eq v3, v0, :cond_c

    if-eqz v14, :cond_c

    .line 156
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x3

    if-eq v3, v1, :cond_b

    const/4 v1, 0x6

    if-eq v3, v1, :cond_a

    const/16 v1, 0x8

    if-eq v3, v1, :cond_9

    goto :goto_9

    :cond_9
    const/high16 v1, 0x43870000    # 270.0f

    .line 165
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_9

    :cond_a
    const/high16 v1, 0x42b40000    # 90.0f

    .line 159
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_9

    :cond_b
    const/high16 v1, 0x43340000    # 180.0f

    .line 162
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_9
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 169
    :try_start_6
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 170
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    const/16 v20, 0x1

    move-object/from16 v19, v0

    .line 169
    invoke-static/range {v14 .. v20}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_a

    .line 172
    :catch_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Failed to decode image"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_a
    if-eqz v14, :cond_d

    return-object v14

    .line 177
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Failed to decode image"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-object v6
.end method

.method public static declared-synchronized createScaledBitmapFromLocalImageSource(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-class v0, Lcom/apptentive/android/sdk/util/image/ImageUtil;

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-static {p0}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 201
    :try_start_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    .line 202
    invoke-static/range {v2 .. v7}, Lcom/apptentive/android/sdk/util/image/ImageUtil;->createLightweightScaledBitmap(Ljava/lang/String;Landroid/net/Uri;IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    :catch_0
    :try_start_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Failed to create scaled bitmap"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    .line 210
    :try_start_3
    invoke-static/range {v2 .. v7}, Lcom/apptentive/android/sdk/util/image/ImageUtil;->createLightweightScaledBitmap(Ljava/lang/String;Landroid/net/Uri;IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 221
    monitor-exit v0

    return-object p0

    .line 225
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 226
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    .line 229
    invoke-static {p3, p4, p1, p2}, Lcom/apptentive/android/sdk/util/image/ImageUtil;->calculateBitmapScaleFactor(IIII)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_2

    int-to-float p2, p3

    mul-float p2, p2, p1

    float-to-int p2, p2

    int-to-float p3, p4

    mul-float p1, p1, p3

    float-to-int p1, p1

    .line 234
    sget-object p3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p4, "Scaling image further down to %d x %d"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p3, p4, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    :try_start_5
    invoke-static {p0, p2, p1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 240
    :try_start_6
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p3, "Final bitmap dimensions: %d x %d"

    new-array p4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p4, v5

    invoke-static {p2, p3, p4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, p1

    goto :goto_1

    .line 238
    :catch_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Failed to create scaled bitmap"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 243
    :cond_2
    :goto_1
    monitor-exit v0

    return-object p0

    .line 212
    :catch_2
    :try_start_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Failed to create scaled bitmap"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 215
    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Source file does not exist any more"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p0

    .line 196
    monitor-exit v0

    throw p0
.end method

.method public static createScaledDownImageCacheFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 271
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 276
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    .line 277
    invoke-virtual {v2, v3, p1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 285
    :try_start_1
    new-instance v4, Lcom/apptentive/android/sdk/util/CountingOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Lcom/apptentive/android/sdk/util/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 286
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V

    const/16 v0, 0x400

    .line 287
    invoke-static {p0, v0, v0, v3, v2}, Lcom/apptentive/android/sdk/util/image/ImageUtil;->createScaledBitmapFromLocalImageSource(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 289
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 290
    invoke-virtual {v4}, Lcom/apptentive/android/sdk/util/CountingOutputStream;->flush()V

    .line 291
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bitmap saved, size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/apptentive/android/sdk/util/CountingOutputStream;->getBytesWritten()I

    move-result v5

    div-int/2addr v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "k"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 293
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    invoke-static {v4}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    return p1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v3, v4

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v3, v4

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v4, v3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 299
    :goto_1
    :try_start_3
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Error storing image."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, v0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->a(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 303
    invoke-static {v3}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    return v1

    :catch_4
    move-exception p0

    .line 295
    :goto_2
    :try_start_4
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "File not found while storing image."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, v0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 303
    invoke-static {v3}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    return v1

    :goto_3
    invoke-static {v4}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static startDownloadAvatarTask(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;Ljava/lang/String;)V
    .locals 4

    .line 254
    new-instance v0, Lcom/apptentive/android/sdk/util/image/ImageUtil$DownloadImageTask;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/util/image/ImageUtil$DownloadImageTask;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;)V

    .line 255
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xb

    if-lt p0, v3, :cond_0

    .line 256
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/apptentive/android/sdk/util/image/ImageUtil$DownloadImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 258
    :cond_0
    new-array p0, v2, [Ljava/lang/String;

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/util/image/ImageUtil$DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method
