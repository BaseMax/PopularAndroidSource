.class public Lcom/facebook/crypto/cipher/NativeGCMCipher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/crypto/cipher/NativeGCMCipher$a;
    }
.end annotation


# static fields
.field public static final FAILURE:Ljava/lang/String; = "Failure"


# instance fields
.field private a:I

.field private final b:Lcom/facebook/crypto/e/b;

.field private mCtxPtr:J


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/e/b;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->UNINITIALIZED$33437bee:I

    iput v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    .line 45
    iput-object p1, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->b:Lcom/facebook/crypto/e/b;

    return-void
.end method

.method private a()V
    .locals 2

    .line 125
    iget v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    sget v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->DECRYPT_INITIALIZED$33437bee:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    sget v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->ENCRYPT_INITIALIZED$33437bee:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Cipher has not been initialized"

    .line 128
    invoke-static {v0, v1}, Lcom/facebook/crypto/e/a;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method private native nativeDecryptFinal([BI)I
.end method

.method private native nativeDecryptInit([B[B)I
.end method

.method private native nativeDestroy()I
.end method

.method private native nativeEncryptFinal([BI)I
.end method

.method private native nativeEncryptInit([B[B)I
.end method

.method private static native nativeFailure()I
.end method

.method private native nativeGetCipherBlockSize()I
.end method

.method private native nativeUpdate([BII[BI)I
.end method

.method private native nativeUpdateAad([BI)I
.end method


# virtual methods
.method public decryptFinal([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/cipher/a;
        }
    .end annotation

    .line 102
    iget v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    sget v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->DECRYPT_INITIALIZED$33437bee:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cipher has not been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/e/a;->checkState(ZLjava/lang/String;)V

    .line 103
    sget v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->DECRYPT_FINALIZED$33437bee:I

    iput v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeDecryptFinal([BI)I

    move-result p1

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    move-result p2

    if-eq p1, p2, :cond_1

    return-void

    .line 105
    :cond_1
    new-instance p1, Lcom/facebook/crypto/cipher/a;

    const-string p2, "The message could not be decrypted successfully.It has either been tampered with or the wrong resource is being decrypted."

    invoke-direct {p1, p2}, Lcom/facebook/crypto/cipher/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decryptInit([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/cipher/a;,
            Lcom/facebook/crypto/a/a;
        }
    .end annotation

    .line 59
    iget v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    sget v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->UNINITIALIZED$33437bee:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cipher has already been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/e/a;->checkState(ZLjava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->b:Lcom/facebook/crypto/e/b;

    invoke-interface {v0}, Lcom/facebook/crypto/e/b;->ensureCryptoLoaded()V

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeDecryptInit([B[B)I

    move-result p1

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 64
    sget p1, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->DECRYPT_INITIALIZED$33437bee:I

    iput p1, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    return-void

    .line 62
    :cond_1
    new-instance p1, Lcom/facebook/crypto/cipher/a;

    const-string p2, "decryptInit"

    invoke-direct {p1, p2}, Lcom/facebook/crypto/cipher/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/cipher/a;
        }
    .end annotation

    .line 4132
    iget v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    sget v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->DECRYPT_FINALIZED$33437bee:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    sget v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->ENCRYPT_FINALIZED$33437bee:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Cipher has not been finalized"

    .line 4135
    invoke-static {v0, v1}, Lcom/facebook/crypto/e/a;->checkState(ZLjava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeDestroy()I

    move-result v0

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 116
    sget v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->UNINITIALIZED$33437bee:I

    iput v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    return-void

    .line 114
    :cond_2
    new-instance v0, Lcom/facebook/crypto/cipher/a;

    const-string v1, "destroy"

    invoke-direct {v0, v1}, Lcom/facebook/crypto/cipher/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encryptFinal([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/cipher/a;
        }
    .end annotation

    .line 93
    iget v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    sget v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->ENCRYPT_INITIALIZED$33437bee:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cipher has not been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/e/a;->checkState(ZLjava/lang/String;)V

    .line 94
    sget v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->ENCRYPT_FINALIZED$33437bee:I

    iput v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeEncryptFinal([BI)I

    move-result p1

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    move-result v0

    if-eq p1, v0, :cond_1

    return-void

    .line 96
    :cond_1
    new-instance p1, Lcom/facebook/crypto/cipher/a;

    new-array v0, v2, [Ljava/lang/Object;

    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    const/4 p2, 0x0

    const-string v1, "encryptFinal: %d"

    .line 3139
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-direct {p1, p2}, Lcom/facebook/crypto/cipher/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encryptInit([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/cipher/a;,
            Lcom/facebook/crypto/a/a;
        }
    .end annotation

    .line 50
    iget v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    sget v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->UNINITIALIZED$33437bee:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cipher has already been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/e/a;->checkState(ZLjava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->b:Lcom/facebook/crypto/e/b;

    invoke-interface {v0}, Lcom/facebook/crypto/e/b;->ensureCryptoLoaded()V

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeEncryptInit([B[B)I

    move-result p1

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 55
    sget p1, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->ENCRYPT_INITIALIZED$33437bee:I

    iput p1, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a:I

    return-void

    .line 53
    :cond_1
    new-instance p1, Lcom/facebook/crypto/cipher/a;

    const-string p2, "encryptInit"

    invoke-direct {p1, p2}, Lcom/facebook/crypto/cipher/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCipherBlockSize()I
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a()V

    .line 121
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeGetCipherBlockSize()I

    move-result v0

    return v0
.end method

.method public update([BII[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/cipher/a;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a()V

    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeUpdate([BII[BI)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 72
    :cond_0
    new-instance p4, Lcom/facebook/crypto/cipher/a;

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p5, v0

    const/4 p2, 0x1

    .line 76
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p5, p2

    const/4 p2, 0x2

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p5, p2

    const/4 p1, 0x0

    const-string p2, "update: Offset = %d; DataLen = %d; Result = %d"

    .line 1139
    invoke-static {p1, p2, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-direct {p4, p1}, Lcom/facebook/crypto/cipher/a;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method public updateAad([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/cipher/a;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a()V

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeUpdateAad([BI)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance p1, Lcom/facebook/crypto/cipher/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 87
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x0

    const-string v1, "updateAAd: DataLen = %d"

    .line 2139
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-direct {p1, p2}, Lcom/facebook/crypto/cipher/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method
