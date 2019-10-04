.class public final Lcom/google/zxing/c/d;
.super Lcom/google/zxing/c/k;
.source "SourceFile"


# static fields
.field static final a:[I

.field private static final b:[C

.field private static final c:I


# instance fields
.field private final d:Ljava/lang/StringBuilder;

.field private final e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/c/d;->b:[C

    const/16 v0, 0x30

    new-array v0, v0, [I

    .line 47
    fill-array-data v0, :array_0

    .line 55
    sput-object v0, Lcom/google/zxing/c/d;->a:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/c/d;->c:I

    return-void

    :array_0
    .array-data 4
        0x114
        0x148
        0x144
        0x142
        0x128
        0x124
        0x122
        0x150
        0x112
        0x10a
        0x1a8
        0x1a4
        0x1a2
        0x194
        0x192
        0x18a
        0x168
        0x164
        0x162
        0x134
        0x11a
        0x158
        0x14c
        0x146
        0x12c
        0x116
        0x1b4
        0x1b2
        0x1ac
        0x1a6
        0x196
        0x19a
        0x16c
        0x166
        0x136
        0x13a
        0x12e
        0x1d4
        0x1d2
        0x1ca
        0x16e
        0x176
        0x1ae
        0x126
        0x1da
        0x1d6
        0x132
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/google/zxing/c/k;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/c/d;->d:Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 62
    iput-object v0, p0, Lcom/google/zxing/c/d;->e:[I

    return-void
.end method

.method private static a([I)I
    .locals 7

    .line 167
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v4, p0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 173
    aget v5, p0, v2

    int-to-float v5, v5

    const/high16 v6, 0x41100000    # 9.0f

    mul-float v5, v5, v6

    int-to-float v6, v3

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-lez v5, :cond_4

    const/4 v6, 0x4

    if-le v5, v6, :cond_1

    goto :goto_4

    :cond_1
    and-int/lit8 v6, v2, 0x1

    if-nez v6, :cond_3

    move v6, v4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_2

    shl-int/lit8 v6, v6, 0x1

    or-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v6

    goto :goto_3

    :cond_3
    shl-int/2addr v4, v5

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    const/4 p0, -0x1

    return p0

    :cond_5
    return v4
.end method

.method private static a(Ljava/lang/CharSequence;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/c;
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 277
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const-string v5, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    mul-int v4, v4, v3

    add-int/2addr v2, v4

    add-int/2addr v3, v1

    if-le v3, p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 282
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    sget-object p1, Lcom/google/zxing/c/d;->b:[C

    rem-int/lit8 v2, v2, 0x2f

    aget-char p1, p1, v2

    if-ne p0, p1, :cond_2

    return-void

    .line 283
    :cond_2
    invoke-static {}, Lcom/google/zxing/c;->getChecksumInstance()Lcom/google/zxing/c;

    move-result-object p0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final decodeRow(ILcom/google/zxing/common/a;Ljava/util/Map;)Lcom/google/zxing/l;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/a;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/l;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;,
            Lcom/google/zxing/c;,
            Lcom/google/zxing/d;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1132
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/a;->getSize()I

    move-result v2

    const/4 v3, 0x0

    .line 1133
    invoke-virtual {v1, v3}, Lcom/google/zxing/common/a;->getNextSet(I)I

    move-result v4

    .line 1135
    iget-object v5, v0, Lcom/google/zxing/c/d;->e:[I

    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([II)V

    .line 1136
    iget-object v5, v0, Lcom/google/zxing/c/d;->e:[I

    .line 1139
    array-length v6, v5

    move v9, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v4, v2, :cond_17

    .line 1143
    invoke-virtual {v1, v4}, Lcom/google/zxing/common/a;->get(I)Z

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v7, :cond_0

    .line 1144
    aget v10, v5, v8

    add-int/2addr v10, v11

    aput v10, v5, v8

    move/from16 v10, p1

    goto/16 :goto_a

    :cond_0
    add-int/lit8 v10, v6, -0x1

    if-ne v8, v10, :cond_16

    .line 1147
    invoke-static {v5}, Lcom/google/zxing/c/d;->a([I)I

    move-result v10

    sget v12, Lcom/google/zxing/c/d;->c:I

    const/4 v13, 0x2

    if-ne v10, v12, :cond_15

    new-array v2, v13, [I

    aput v9, v2, v3

    aput v4, v2, v11

    .line 71
    aget v4, v2, v11

    invoke-virtual {v1, v4}, Lcom/google/zxing/common/a;->getNextSet(I)I

    move-result v4

    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/a;->getSize()I

    move-result v5

    .line 74
    iget-object v6, v0, Lcom/google/zxing/c/d;->e:[I

    .line 75
    invoke-static {v6, v3}, Ljava/util/Arrays;->fill([II)V

    .line 76
    iget-object v7, v0, Lcom/google/zxing/c/d;->d:Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 82
    :goto_1
    invoke-static {v1, v4, v6}, Lcom/google/zxing/c/d;->a(Lcom/google/zxing/common/a;I[I)V

    .line 83
    invoke-static {v6}, Lcom/google/zxing/c/d;->a([I)I

    move-result v8

    if-ltz v8, :cond_14

    const/4 v9, 0x0

    .line 1189
    :goto_2
    sget-object v10, Lcom/google/zxing/c/d;->a:[I

    array-length v12, v10

    if-ge v9, v12, :cond_13

    .line 1190
    aget v10, v10, v9

    if-ne v10, v8, :cond_12

    .line 1191
    sget-object v8, Lcom/google/zxing/c/d;->b:[C

    aget-char v8, v8, v9

    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    array-length v9, v6

    move v12, v4

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_1

    aget v14, v6, v10

    add-int/2addr v12, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 94
    :cond_1
    invoke-virtual {v1, v12}, Lcom/google/zxing/common/a;->getNextSet(I)I

    move-result v9

    const/16 v10, 0x2a

    if-ne v8, v10, :cond_11

    .line 96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 99
    array-length v8, v6

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_4
    if-ge v10, v8, :cond_2

    aget v14, v6, v10

    add-int/2addr v12, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_2
    if-eq v9, v5, :cond_10

    .line 104
    invoke-virtual {v1, v9}, Lcom/google/zxing/common/a;->get(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 108
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, v13, :cond_f

    .line 1267
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v5, v1, -0x2

    const/16 v6, 0x14

    .line 1268
    invoke-static {v7, v5, v6}, Lcom/google/zxing/c/d;->a(Ljava/lang/CharSequence;II)V

    sub-int/2addr v1, v11

    const/16 v5, 0xf

    .line 1269
    invoke-static {v7, v1, v5}, Lcom/google/zxing/c/d;->a(Ljava/lang/CharSequence;II)V

    .line 115
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v13

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2198
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_e

    .line 2201
    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x61

    if-lt v8, v9, :cond_d

    const/16 v9, 0x64

    if-gt v8, v9, :cond_d

    add-int/lit8 v9, v1, -0x1

    if-ge v6, v9, :cond_c

    add-int/lit8 v6, v6, 0x1

    .line 2206
    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x4f

    const/16 v14, 0x5a

    const/16 v15, 0x41

    packed-switch v8, :pswitch_data_0

    const/4 v8, 0x0

    goto/16 :goto_7

    :pswitch_0
    if-lt v9, v15, :cond_3

    if-gt v9, v14, :cond_3

    add-int/lit8 v9, v9, 0x20

    goto :goto_6

    .line 2214
    :cond_3
    invoke-static {}, Lcom/google/zxing/d;->getFormatInstance()Lcom/google/zxing/d;

    move-result-object v1

    throw v1

    :pswitch_1
    if-lt v9, v15, :cond_4

    if-gt v9, v10, :cond_4

    add-int/lit8 v9, v9, -0x20

    goto :goto_6

    :cond_4
    if-ne v9, v14, :cond_5

    const/16 v8, 0x3a

    goto :goto_7

    .line 2252
    :cond_5
    invoke-static {}, Lcom/google/zxing/d;->getFormatInstance()Lcom/google/zxing/d;

    move-result-object v1

    throw v1

    :pswitch_2
    if-lt v9, v15, :cond_6

    const/16 v8, 0x45

    if-gt v9, v8, :cond_6

    add-int/lit8 v9, v9, -0x26

    goto :goto_6

    :cond_6
    const/16 v8, 0x46

    if-lt v9, v8, :cond_7

    const/16 v8, 0x4a

    if-gt v9, v8, :cond_7

    add-int/lit8 v9, v9, -0xb

    goto :goto_6

    :cond_7
    const/16 v8, 0x4b

    if-lt v9, v8, :cond_8

    if-gt v9, v10, :cond_8

    add-int/lit8 v9, v9, 0x10

    goto :goto_6

    :cond_8
    const/16 v8, 0x50

    if-lt v9, v8, :cond_9

    const/16 v8, 0x53

    if-gt v9, v8, :cond_9

    add-int/lit8 v9, v9, 0x2b

    goto :goto_6

    :cond_9
    const/16 v8, 0x54

    if-lt v9, v8, :cond_a

    if-gt v9, v14, :cond_a

    const/16 v8, 0x7f

    goto :goto_7

    .line 2242
    :cond_a
    invoke-static {}, Lcom/google/zxing/d;->getFormatInstance()Lcom/google/zxing/d;

    move-result-object v1

    throw v1

    :pswitch_3
    if-lt v9, v15, :cond_b

    if-gt v9, v14, :cond_b

    add-int/lit8 v9, v9, -0x40

    :goto_6
    int-to-char v8, v9

    goto :goto_7

    .line 2222
    :cond_b
    invoke-static {}, Lcom/google/zxing/d;->getFormatInstance()Lcom/google/zxing/d;

    move-result-object v1

    throw v1

    .line 2256
    :goto_7
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 2204
    :cond_c
    invoke-static {}, Lcom/google/zxing/d;->getFormatInstance()Lcom/google/zxing/d;

    move-result-object v1

    throw v1

    .line 2260
    :cond_d
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8
    add-int/2addr v6, v11

    goto/16 :goto_5

    .line 2263
    :cond_e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    aget v5, v2, v11

    aget v2, v2, v3

    add-int/2addr v5, v2

    int-to-float v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    int-to-float v4, v4

    int-to-float v6, v12

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    .line 121
    new-instance v5, Lcom/google/zxing/l;

    const/4 v6, 0x0

    new-array v7, v13, [Lcom/google/zxing/m;

    new-instance v8, Lcom/google/zxing/m;

    move/from16 v10, p1

    int-to-float v9, v10

    invoke-direct {v8, v2, v9}, Lcom/google/zxing/m;-><init>(FF)V

    aput-object v8, v7, v3

    new-instance v2, Lcom/google/zxing/m;

    invoke-direct {v2, v4, v9}, Lcom/google/zxing/m;-><init>(FF)V

    aput-object v2, v7, v11

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v5, v1, v6, v7, v2}, Lcom/google/zxing/l;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/m;Lcom/google/zxing/BarcodeFormat;)V

    return-object v5

    .line 110
    :cond_f
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v1

    throw v1

    .line 105
    :cond_10
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v1

    throw v1

    :cond_11
    move/from16 v10, p1

    move v4, v9

    goto/16 :goto_1

    :cond_12
    move/from16 v10, p1

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1194
    :cond_13
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v1

    throw v1

    .line 85
    :cond_14
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v1

    throw v1

    :cond_15
    move/from16 v10, p1

    .line 1150
    aget v12, v5, v3

    aget v14, v5, v11

    add-int/2addr v12, v14

    add-int/2addr v9, v12

    add-int/lit8 v12, v8, -0x1

    .line 1151
    invoke-static {v5, v13, v5, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1152
    aput v3, v5, v12

    .line 1153
    aput v3, v5, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    :cond_16
    move/from16 v10, p1

    add-int/lit8 v8, v8, 0x1

    .line 1158
    :goto_9
    aput v11, v5, v8

    xor-int/lit8 v7, v7, 0x1

    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1162
    :cond_17
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v1

    goto :goto_c

    :goto_b
    throw v1

    :goto_c
    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
