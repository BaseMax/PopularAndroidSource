.class public final Lcom/adyen/threeds2/internal/l/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Ljava/nio/charset/Charset;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-object v0, Lcom/adyen/threeds2/internal/b;->a:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/adyen/threeds2/internal/l/a;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;I)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/adyen/threeds2/internal/l/a;->b:Ljava/nio/charset/Charset;

    .line 79
    iput p2, p0, Lcom/adyen/threeds2/internal/l/a;->c:I

    return-void
.end method

.method public static a()Lcom/adyen/threeds2/internal/l/a;
    .locals 4

    .line 54
    sget-object v0, Lcom/adyen/threeds2/internal/l/a;->a:Ljava/nio/charset/Charset;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xb

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/adyen/threeds2/internal/l/a;->a(Ljava/nio/charset/Charset;[I)Lcom/adyen/threeds2/internal/l/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/nio/charset/Charset;)Lcom/adyen/threeds2/internal/l/a;
    .locals 3

    const/4 v0, 0x1

    .line 58
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb

    aput v2, v0, v1

    invoke-static {p0, v0}, Lcom/adyen/threeds2/internal/l/a;->a(Ljava/nio/charset/Charset;[I)Lcom/adyen/threeds2/internal/l/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/nio/charset/Charset;[I)Lcom/adyen/threeds2/internal/l/a;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 69
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v3, p1, v0

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 74
    :cond_1
    new-instance p1, Lcom/adyen/threeds2/internal/l/a;

    invoke-direct {p1, p0, v0}, Lcom/adyen/threeds2/internal/l/a;-><init>(Ljava/nio/charset/Charset;I)V

    return-object p1
.end method

.method private e([B)Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/l/a;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private e(Ljava/lang/String;)[B
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/adyen/threeds2/internal/l/a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/adyen/threeds2/internal/l/a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/l/a;->b([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a([B)[B
    .locals 1

    .line 91
    iget v0, p0, Lcom/adyen/threeds2/internal/l/a;->c:I

    invoke-static {p1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public b([B)Ljava/lang/String;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/l/a;->a([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/l/a;->e([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/nio/charset/Charset;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/adyen/threeds2/internal/l/a;->b:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public b(Ljava/lang/String;)[B
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/l/a;->e(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/l/a;->c([B)[B

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/adyen/threeds2/internal/l/a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/l/a;->d([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c([B)[B
    .locals 1

    .line 115
    iget v0, p0, Lcom/adyen/threeds2/internal/l/a;->c:I

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public d([B)Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/l/a;->c([B)[B

    move-result-object p1

    iget-object v1, p0, Lcom/adyen/threeds2/internal/l/a;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/l/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
