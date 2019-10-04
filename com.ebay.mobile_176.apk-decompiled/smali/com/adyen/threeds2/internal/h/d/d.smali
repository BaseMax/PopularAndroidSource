.class public final Lcom/adyen/threeds2/internal/h/d/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/adyen/threeds2/internal/h/d/a;

.field private final c:Lcom/adyen/threeds2/internal/h/d/b;

.field private final d:Lcom/adyen/threeds2/internal/h/d/c;


# direct methods
.method private static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2d7

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/h/d/d;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/adyen/threeds2/internal/h/d/a;Lcom/adyen/threeds2/internal/h/d/b;Lcom/adyen/threeds2/internal/h/d/c;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/adyen/threeds2/internal/h/d/d;->b:Lcom/adyen/threeds2/internal/h/d/a;

    .line 80
    iput-object p2, p0, Lcom/adyen/threeds2/internal/h/d/d;->c:Lcom/adyen/threeds2/internal/h/d/b;

    .line 81
    iput-object p3, p0, Lcom/adyen/threeds2/internal/h/d/d;->d:Lcom/adyen/threeds2/internal/h/d/c;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/d/d;
    .locals 3

    const/16 v0, 0x2d5

    .line 61
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 63
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 67
    aget-object v0, p0, v0

    .line 69
    new-instance v1, Lcom/adyen/threeds2/internal/h/d/a;

    invoke-direct {v1, v0}, Lcom/adyen/threeds2/internal/h/d/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 70
    aget-object v0, p0, v0

    const/4 v2, 0x2

    .line 71
    aget-object p0, p0, v2

    .line 72
    new-instance v2, Lcom/adyen/threeds2/internal/h/d/b;

    invoke-direct {v2, v0}, Lcom/adyen/threeds2/internal/h/d/b;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/adyen/threeds2/internal/h/d/c;

    invoke-direct {v0, p0}, Lcom/adyen/threeds2/internal/h/d/c;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance p0, Lcom/adyen/threeds2/internal/h/d/d;

    invoke-direct {p0, v1, v2, v0}, Lcom/adyen/threeds2/internal/h/d/d;-><init>(Lcom/adyen/threeds2/internal/h/d/a;Lcom/adyen/threeds2/internal/h/d/b;Lcom/adyen/threeds2/internal/h/d/c;)V

    return-object p0

    .line 64
    :cond_0
    sget-object p0, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/e/c;->a()Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d6

    invoke-static {p0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/adyen/threeds2/internal/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/adyen/threeds2/internal/h/d/b;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/d/d;->c:Lcom/adyen/threeds2/internal/h/d/b;

    return-object v0
.end method

.method public a(Ljava/security/cert/X509Certificate;)V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/d/d;->b:Lcom/adyen/threeds2/internal/h/d/a;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/d/a;->b()Ljava/util/List;

    move-result-object v0

    .line 112
    invoke-static {p1, v0}, Lcom/adyen/threeds2/internal/h/e/i;->a(Ljava/security/cert/X509Certificate;Ljava/util/List;)V

    .line 114
    iget-object p1, p0, Lcom/adyen/threeds2/internal/h/d/d;->b:Lcom/adyen/threeds2/internal/h/d/a;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/d/a;->d()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/d/d;->c:Lcom/adyen/threeds2/internal/h/d/b;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/d/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/adyen/threeds2/internal/h/d/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/d/d;->b:Lcom/adyen/threeds2/internal/h/d/a;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/d/a;->a()Lcom/adyen/threeds2/internal/h/a/c/c;

    move-result-object v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/adyen/threeds2/internal/h/d/d;->d:Lcom/adyen/threeds2/internal/h/d/c;

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/h/d/c;->c()[B

    move-result-object v1

    iget-object v2, p0, Lcom/adyen/threeds2/internal/h/d/d;->b:Lcom/adyen/threeds2/internal/h/d/a;

    invoke-virtual {v2}, Lcom/adyen/threeds2/internal/h/d/a;->b()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/adyen/threeds2/internal/h/a/c/c;->a([B[BLjava/security/PublicKey;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 119
    :cond_0
    sget-object p1, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/e/c;->a()Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 122
    sget-object v0, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 99
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/adyen/threeds2/internal/h/d/d;->a(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Lcom/adyen/threeds2/exception/SDKRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 107
    :cond_0
    sget-object p1, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/e/c;->a()Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1
.end method
