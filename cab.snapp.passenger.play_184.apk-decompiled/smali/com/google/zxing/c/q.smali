.class public final Lcom/google/zxing/c/q;
.super Lcom/google/zxing/c/p;
.source "SourceFile"


# static fields
.field static final a:[[I

.field private static final g:[I


# instance fields
.field private final h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 37
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/c/q;->g:[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/16 v1, 0xa

    new-array v2, v1, [I

    .line 68
    fill-array-data v2, :array_1

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/c/q;->a:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    :array_2
    .array-data 4
        0x7
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/google/zxing/c/p;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 76
    iput-object v0, p0, Lcom/google/zxing/c/q;->h:[I

    return-void
.end method

.method public static convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x6

    new-array v0, v0, [C

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 146
    invoke-virtual {p0, v3, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 148
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    .line 149
    aget-char v5, v0, v4

    const-string v6, "00000"

    const-string v7, "0000"

    const/4 v8, 0x3

    const/4 v9, 0x2

    packed-switch v5, :pswitch_data_0

    .line 170
    invoke-virtual {v3, v0, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const/4 v4, 0x4

    .line 165
    invoke-virtual {v3, v0, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    aget-char v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 160
    :pswitch_1
    invoke-virtual {v3, v0, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v3, v0, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 154
    :pswitch_2
    invoke-virtual {v3, v0, v2, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v3, v0, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 176
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    .line 177
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final a(Lcom/google/zxing/common/a;[ILjava/lang/StringBuilder;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/zxing/c/q;->h:[I

    const/4 v1, 0x0

    .line 83
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 84
    aput v1, v0, v2

    const/4 v3, 0x2

    .line 85
    aput v1, v0, v3

    const/4 v3, 0x3

    .line 86
    aput v1, v0, v3

    .line 87
    invoke-virtual {p1}, Lcom/google/zxing/common/a;->getSize()I

    move-result v3

    .line 88
    aget p2, p2, v2

    move v4, p2

    const/4 p2, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x6

    const/16 v7, 0xa

    if-ge p2, v6, :cond_2

    if-ge v4, v3, :cond_2

    .line 93
    sget-object v6, Lcom/google/zxing/c/q;->f:[[I

    invoke-static {p1, v0, v4, v6}, Lcom/google/zxing/c/q;->a(Lcom/google/zxing/common/a;[II[[I)I

    move-result v6

    .line 94
    rem-int/lit8 v8, v6, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    array-length v8, v0

    move v9, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_0

    aget v10, v0, v4

    add-int/2addr v9, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    if-lt v6, v7, :cond_1

    rsub-int/lit8 v4, p2, 0x5

    shl-int v4, v2, v4

    or-int/2addr v4, v5

    move v5, v4

    :cond_1
    add-int/lit8 p2, p2, 0x1

    move v4, v9

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-gt p1, v2, :cond_5

    const/4 p2, 0x0

    :goto_3
    if-ge p2, v7, :cond_4

    .line 1123
    sget-object v0, Lcom/google/zxing/c/q;->a:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    if-ne v5, v0, :cond_3

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    .line 1124
    invoke-virtual {p3, v1, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x30

    int-to-char p1, p2

    .line 1125
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v4

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 1130
    :cond_5
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object p1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method final a()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 135
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/d;
        }
    .end annotation

    .line 115
    invoke-static {p1}, Lcom/google/zxing/c/q;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/google/zxing/c/p;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected final a(Lcom/google/zxing/common/a;I)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 110
    sget-object v0, Lcom/google/zxing/c/q;->g:[I

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0}, Lcom/google/zxing/c/q;->a(Lcom/google/zxing/common/a;IZ[I)[I

    move-result-object p1

    return-object p1
.end method
