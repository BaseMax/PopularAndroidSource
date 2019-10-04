.class public final Lcom/adyen/threeds2/internal/l/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method private static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x386

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/l/g;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 34
    invoke-static {}, Lcom/adyen/threeds2/internal/l/a;->a()Lcom/adyen/threeds2/internal/l/a;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/l/a;->b()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 37
    array-length v1, p0

    invoke-static {v1}, Lcom/adyen/threeds2/internal/l/g;->a(I)[B

    move-result-object v1

    .line 38
    invoke-static {p0, v1}, Lcom/adyen/threeds2/internal/l/g;->a([B[B)[B

    move-result-object p0

    .line 39
    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/l/a;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {v0, p0}, Lcom/adyen/threeds2/internal/l/a;->b([B)Ljava/lang/String;

    move-result-object p0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x384

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/adyen/threeds2/internal/l/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(I)[B
    .locals 3

    .line 64
    new-array p0, p0, [B

    .line 65
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 66
    invoke-virtual {v0, p0}, Ljava/util/Random;->nextBytes([B)V

    const/4 v0, 0x0

    .line 67
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 68
    aget-byte v1, p0, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static a([B[B)[B
    .locals 4

    .line 56
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 57
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 58
    aget-byte v2, p0, v1

    array-length v3, p1

    rem-int v3, v1, v3

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 45
    invoke-static {}, Lcom/adyen/threeds2/internal/l/a;->a()Lcom/adyen/threeds2/internal/l/a;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/l/a;->b()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 47
    invoke-virtual {v0, p0}, Lcom/adyen/threeds2/internal/l/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x385

    .line 48
    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 49
    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Lcom/adyen/threeds2/internal/l/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 50
    aget-object p0, p0, v3

    invoke-virtual {v0, p0}, Lcom/adyen/threeds2/internal/l/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/adyen/threeds2/internal/l/g;->a([B[B)[B

    move-result-object p0

    .line 52
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
