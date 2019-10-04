.class final Lcom/google/zxing/c/a/a/a/m$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/c/a/a/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/c/a/a/a/m$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALPHA$1376b33b:I = 0x2

.field public static final ISO_IEC_646$1376b33b:I = 0x3

.field public static final NUMERIC$1376b33b:I = 0x1

.field private static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 37
    sget v1, Lcom/google/zxing/c/a/a/a/m$a;->NUMERIC$1376b33b:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/c/a/a/a/m$a;->ALPHA$1376b33b:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/c/a/a/a/m$a;->ISO_IEC_646$1376b33b:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/google/zxing/c/a/a/a/m$a;->a:[I

    return-void
.end method

.method public static values$3fa6840b()[I
    .locals 1

    .line 37
    sget-object v0, Lcom/google/zxing/c/a/a/a/m$a;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
