.class public Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ITERATIONS:I = 0x1000

.field public static final DEFAULT_KEY_LENGTH:I = 0x10

.field public static final MINIMUM_ITERATIONS:I = 0x1

.field public static final MINIMUM_KEY_LENGTH:I = 0x8


# instance fields
.field private final a:Lcom/facebook/crypto/e/b;

.field private final b:Ljava/security/SecureRandom;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:[B

.field private f:I

.field private g:[B


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lcom/facebook/crypto/e/b;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->b:Ljava/security/SecureRandom;

    .line 69
    iput-object p2, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->a:Lcom/facebook/crypto/e/b;

    const/16 p1, 0x1000

    .line 70
    iput p1, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->c:I

    const/16 p1, 0x10

    .line 71
    iput p1, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->f:I

    return-void
.end method

.method private native nativePbkdf2(Ljava/lang/String;[BI[B)I
.end method


# virtual methods
.method public generate()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/a/a;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->e:[B

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 111
    iput-object v0, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->e:[B

    .line 112
    iget-object v0, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->b:Ljava/security/SecureRandom;

    iget-object v1, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->e:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 114
    :cond_0
    iget v0, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->f:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->g:[B

    .line 115
    iget-object v0, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->a:Lcom/facebook/crypto/e/b;

    invoke-interface {v0}, Lcom/facebook/crypto/e/b;->ensureCryptoLoaded()V

    .line 116
    iget-object v0, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->e:[B

    iget v2, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->c:I

    iget-object v3, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->g:[B

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->nativePbkdf2(Ljava/lang/String;[BI[B)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->g:[B

    return-object v0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Native PBKDF2 failed..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Password was not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGeneratedKey()[B
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->g:[B

    return-object v0
.end method

.method public getIterations()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->c:I

    return v0
.end method

.method public getKeyLengthInBytes()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->f:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->e:[B

    return-object v0
.end method

.method public setIterations(I)Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;
    .locals 1

    if-lez p1, :cond_0

    .line 78
    iput p1, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->c:I

    return-object p0

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Iterations cannot be less than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeyLengthInBytes(I)Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;
    .locals 1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    .line 102
    iput p1, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->f:I

    return-object p0

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key length cannot be less than 8 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPassword(Ljava/lang/String;)Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;
    .locals 1

    if-eqz p1, :cond_0

    .line 86
    iput-object p1, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->d:Ljava/lang/String;

    return-object p0

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Password cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSalt([B)Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;
    .locals 2

    if-eqz p1, :cond_1

    .line 91
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Salt cannot be shorter than 8 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/facebook/crypto/keygen/PasswordBasedKeyDerivation;->e:[B

    return-object p0
.end method
