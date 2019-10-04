.class final Lcom/facebook/crypto/mac/NativeMac$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/crypto/mac/NativeMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/crypto/mac/NativeMac$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final FINALIZED$60ad27eb:I = 0x3

.field public static final INITIALIZED$60ad27eb:I = 0x2

.field public static final UNINITIALIZED$60ad27eb:I = 0x1

.field private static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 34
    sget v1, Lcom/facebook/crypto/mac/NativeMac$a;->UNINITIALIZED$60ad27eb:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/facebook/crypto/mac/NativeMac$a;->INITIALIZED$60ad27eb:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/facebook/crypto/mac/NativeMac$a;->FINALIZED$60ad27eb:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/facebook/crypto/mac/NativeMac$a;->a:[I

    return-void
.end method

.method public static values$6cb7eddb()[I
    .locals 1

    .line 34
    sget-object v0, Lcom/facebook/crypto/mac/NativeMac$a;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
