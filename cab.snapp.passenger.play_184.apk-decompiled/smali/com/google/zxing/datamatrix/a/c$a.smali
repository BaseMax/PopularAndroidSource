.class final Lcom/google/zxing/datamatrix/a/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/datamatrix/a/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANSIX12_ENCODE$6e85352:I = 0x5

.field public static final ASCII_ENCODE$6e85352:I = 0x2

.field public static final BASE256_ENCODE$6e85352:I = 0x7

.field public static final C40_ENCODE$6e85352:I = 0x3

.field public static final EDIFACT_ENCODE$6e85352:I = 0x6

.field public static final PAD_ENCODE$6e85352:I = 0x1

.field public static final TEXT_ENCODE$6e85352:I = 0x4

.field private static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 39
    sget v1, Lcom/google/zxing/datamatrix/a/c$a;->PAD_ENCODE$6e85352:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/datamatrix/a/c$a;->ASCII_ENCODE$6e85352:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/datamatrix/a/c$a;->C40_ENCODE$6e85352:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/datamatrix/a/c$a;->TEXT_ENCODE$6e85352:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/datamatrix/a/c$a;->ANSIX12_ENCODE$6e85352:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/datamatrix/a/c$a;->EDIFACT_ENCODE$6e85352:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/datamatrix/a/c$a;->BASE256_ENCODE$6e85352:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sput-object v0, Lcom/google/zxing/datamatrix/a/c$a;->a:[I

    return-void
.end method

.method public static values$68f9f718()[I
    .locals 1

    .line 39
    sget-object v0, Lcom/google/zxing/datamatrix/a/c$a;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
