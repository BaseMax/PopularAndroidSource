.class final Lcom/google/zxing/pdf417/a/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/pdf417/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/pdf417/a/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALPHA$72b0c14b:I = 0x1

.field public static final ALPHA_SHIFT$72b0c14b:I = 0x5

.field public static final LOWER$72b0c14b:I = 0x2

.field public static final MIXED$72b0c14b:I = 0x3

.field public static final PUNCT$72b0c14b:I = 0x4

.field public static final PUNCT_SHIFT$72b0c14b:I = 0x6

.field private static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 38
    sget v1, Lcom/google/zxing/pdf417/a/e$a;->ALPHA$72b0c14b:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/pdf417/a/e$a;->LOWER$72b0c14b:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/pdf417/a/e$a;->MIXED$72b0c14b:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/pdf417/a/e$a;->PUNCT$72b0c14b:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/pdf417/a/e$a;->ALPHA_SHIFT$72b0c14b:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/pdf417/a/e$a;->PUNCT_SHIFT$72b0c14b:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sput-object v0, Lcom/google/zxing/pdf417/a/e$a;->a:[I

    return-void
.end method

.method public static values$a5b57b()[I
    .locals 1

    .line 38
    sget-object v0, Lcom/google/zxing/pdf417/a/e$a;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
