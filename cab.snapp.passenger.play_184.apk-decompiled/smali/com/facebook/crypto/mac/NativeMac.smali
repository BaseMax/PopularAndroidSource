.class public Lcom/facebook/crypto/mac/NativeMac;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/crypto/mac/NativeMac$a;
    }
.end annotation


# static fields
.field public static final FAILURE:Ljava/lang/String; = "Failure"

.field public static final KEY_LENGTH:I = 0x40


# instance fields
.field private a:I

.field private final b:Lcom/facebook/crypto/e/b;

.field private mCtxPtr:J


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/e/b;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget v0, Lcom/facebook/crypto/mac/NativeMac$a;->UNINITIALIZED$60ad27eb:I

    iput v0, p0, Lcom/facebook/crypto/mac/NativeMac;->a:I

    .line 41
    iput-object p1, p0, Lcom/facebook/crypto/mac/NativeMac;->b:Lcom/facebook/crypto/e/b;

    return-void
.end method

.method private native nativeDestroy()I
.end method

.method private native nativeDoFinal()[B
.end method

.method private static native nativeFailure()I
.end method

.method private native nativeGetMacLength()I
.end method

.method private native nativeInit([BI)I
.end method

.method private native nativeUpdate(B)I
.end method

.method private native nativeUpdate([BII)I
.end method


# virtual methods
.method public destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget v0, p0, Lcom/facebook/crypto/mac/NativeMac;->a:I

    sget v1, Lcom/facebook/crypto/mac/NativeMac$a;->FINALIZED$60ad27eb:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Mac has not been finalized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/e/a;->checkState(ZLjava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/facebook/crypto/mac/NativeMac;->nativeDestroy()I

    move-result v0

    invoke-static {}, Lcom/facebook/crypto/mac/NativeMac;->nativeFailure()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 83
    sget v0, Lcom/facebook/crypto/mac/NativeMac$a;->UNINITIALIZED$60ad27eb:I

    iput v0, p0, Lcom/facebook/crypto/mac/NativeMac;->a:I

    return-void

    .line 81
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doFinal()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget v0, p0, Lcom/facebook/crypto/mac/NativeMac;->a:I

    sget v1, Lcom/facebook/crypto/mac/NativeMac$a;->INITIALIZED$60ad27eb:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Mac has not been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/e/a;->checkState(ZLjava/lang/String;)V

    .line 69
    sget v0, Lcom/facebook/crypto/mac/NativeMac$a;->FINALIZED$60ad27eb:I

    iput v0, p0, Lcom/facebook/crypto/mac/NativeMac;->a:I

    .line 70
    invoke-direct {p0}, Lcom/facebook/crypto/mac/NativeMac;->nativeDoFinal()[B

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 72
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMacLength()I
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/facebook/crypto/mac/NativeMac;->nativeGetMacLength()I

    move-result v0

    return v0
.end method

.method public init([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/a/a;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget v0, p0, Lcom/facebook/crypto/mac/NativeMac;->a:I

    sget v1, Lcom/facebook/crypto/mac/NativeMac$a;->UNINITIALIZED$60ad27eb:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Mac has already been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/e/a;->checkState(ZLjava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/facebook/crypto/mac/NativeMac;->b:Lcom/facebook/crypto/e/b;

    invoke-interface {v0}, Lcom/facebook/crypto/e/b;->ensureCryptoLoaded()V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/mac/NativeMac;->nativeInit([BI)I

    move-result p1

    invoke-static {}, Lcom/facebook/crypto/mac/NativeMac;->nativeFailure()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 50
    sget p1, Lcom/facebook/crypto/mac/NativeMac$a;->INITIALIZED$60ad27eb:I

    iput p1, p0, Lcom/facebook/crypto/mac/NativeMac;->a:I

    return-void

    .line 48
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failure"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget v0, p0, Lcom/facebook/crypto/mac/NativeMac;->a:I

    sget v1, Lcom/facebook/crypto/mac/NativeMac$a;->INITIALIZED$60ad27eb:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Mac has not been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/e/a;->checkState(ZLjava/lang/String;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/crypto/mac/NativeMac;->nativeUpdate(B)I

    move-result p1

    invoke-static {}, Lcom/facebook/crypto/mac/NativeMac;->nativeFailure()I

    move-result v0

    if-eq p1, v0, :cond_1

    return-void

    .line 56
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failure"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget v0, p0, Lcom/facebook/crypto/mac/NativeMac;->a:I

    sget v1, Lcom/facebook/crypto/mac/NativeMac$a;->INITIALIZED$60ad27eb:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Mac has not been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/e/a;->checkState(ZLjava/lang/String;)V

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/crypto/mac/NativeMac;->nativeUpdate([BII)I

    move-result p1

    invoke-static {}, Lcom/facebook/crypto/mac/NativeMac;->nativeFailure()I

    move-result p2

    if-eq p1, p2, :cond_1

    return-void

    .line 63
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failure"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
