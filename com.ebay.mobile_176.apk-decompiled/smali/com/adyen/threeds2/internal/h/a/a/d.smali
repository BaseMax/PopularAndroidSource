.class public final Lcom/adyen/threeds2/internal/h/a/a/d;
.super Ljavax/crypto/spec/SecretKeySpec;


# instance fields
.field private final a:Ljavax/crypto/SecretKey;

.field private final b:Ljava/security/Key;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Lcom/adyen/threeds2/internal/h/a/a/b;)V
    .locals 0

    .line 48
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/h/a/a/d;-><init>([BLcom/adyen/threeds2/internal/h/a/a/b;)V

    return-void
.end method

.method public constructor <init>([BLcom/adyen/threeds2/internal/h/a/a/b;)V
    .locals 4

    .line 39
    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/h/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 41
    array-length v0, p1

    .line 42
    div-int/lit8 v1, v0, 0x2

    .line 43
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/h/a/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/adyen/threeds2/internal/h/a/a/d;->a:Ljavax/crypto/SecretKey;

    .line 44
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/h/a/a/b;->f()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/adyen/threeds2/internal/h/a/a/d;->b:Ljava/security/Key;

    return-void
.end method


# virtual methods
.method public a()Ljavax/crypto/SecretKey;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/a/a/d;->a:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public b()Ljava/security/Key;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/a/a/d;->b:Ljava/security/Key;

    return-object v0
.end method
