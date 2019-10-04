.class final Lcom/facebook/crypto/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/crypto/b/a;


# instance fields
.field private final a:Lcom/facebook/crypto/b/a;

.field private final b:Lcom/facebook/crypto/CryptoConfig;


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/b/a;Lcom/facebook/crypto/CryptoConfig;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/crypto/a;->a:Lcom/facebook/crypto/b/a;

    .line 33
    iput-object p2, p0, Lcom/facebook/crypto/a;->b:Lcom/facebook/crypto/CryptoConfig;

    return-void
.end method

.method private static a([BILjava/lang/String;)V
    .locals 2

    .line 63
    array-length v0, p0

    if-ne v0, p1, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " should be "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes long but is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final destroyKeys()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/facebook/crypto/a;->a:Lcom/facebook/crypto/b/a;

    invoke-interface {v0}, Lcom/facebook/crypto/b/a;->destroyKeys()V

    return-void
.end method

.method public final getCipherKey()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/a/b;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/facebook/crypto/a;->a:Lcom/facebook/crypto/b/a;

    invoke-interface {v0}, Lcom/facebook/crypto/b/a;->getCipherKey()[B

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/facebook/crypto/a;->b:Lcom/facebook/crypto/CryptoConfig;

    iget v1, v1, Lcom/facebook/crypto/CryptoConfig;->keyLength:I

    const-string v2, "Key"

    invoke-static {v0, v1, v2}, Lcom/facebook/crypto/a;->a([BILjava/lang/String;)V

    return-object v0
.end method

.method public final getMacKey()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/a/b;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/facebook/crypto/a;->a:Lcom/facebook/crypto/b/a;

    invoke-interface {v0}, Lcom/facebook/crypto/b/a;->getMacKey()[B

    move-result-object v0

    const/16 v1, 0x40

    const-string v2, "Mac"

    .line 46
    invoke-static {v0, v1, v2}, Lcom/facebook/crypto/a;->a([BILjava/lang/String;)V

    return-object v0
.end method

.method public final getNewIV()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/a/b;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/facebook/crypto/a;->a:Lcom/facebook/crypto/b/a;

    invoke-interface {v0}, Lcom/facebook/crypto/b/a;->getNewIV()[B

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/facebook/crypto/a;->b:Lcom/facebook/crypto/CryptoConfig;

    iget v1, v1, Lcom/facebook/crypto/CryptoConfig;->ivLength:I

    const-string v2, "IV"

    invoke-static {v0, v1, v2}, Lcom/facebook/crypto/a;->a([BILjava/lang/String;)V

    return-object v0
.end method
