.class final Lcom/facebook/crypto/cipher/NativeGCMCipher$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/crypto/cipher/NativeGCMCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/crypto/cipher/NativeGCMCipher$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final DECRYPT_FINALIZED$33437bee:I = 0x5

.field public static final DECRYPT_INITIALIZED$33437bee:I = 0x3

.field public static final ENCRYPT_FINALIZED$33437bee:I = 0x4

.field public static final ENCRYPT_INITIALIZED$33437bee:I = 0x2

.field public static final UNINITIALIZED$33437bee:I = 0x1

.field private static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 36
    sget v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->UNINITIALIZED$33437bee:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->ENCRYPT_INITIALIZED$33437bee:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->DECRYPT_INITIALIZED$33437bee:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->ENCRYPT_FINALIZED$33437bee:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->DECRYPT_FINALIZED$33437bee:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->a:[I

    return-void
.end method

.method public static values$616c7b18()[I
    .locals 1

    .line 36
    sget-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$a;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
