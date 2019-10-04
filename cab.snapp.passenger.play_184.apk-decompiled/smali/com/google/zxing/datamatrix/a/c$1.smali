.class final synthetic Lcom/google/zxing/datamatrix/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 95
    invoke-static {}, Lcom/google/zxing/datamatrix/a/c$a;->values$68f9f718()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/zxing/datamatrix/a/c$1;->a:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/google/zxing/datamatrix/a/c$1;->a:[I

    sget v2, Lcom/google/zxing/datamatrix/a/c$a;->C40_ENCODE$6e85352:I

    sub-int/2addr v2, v0

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/google/zxing/datamatrix/a/c$1;->a:[I

    sget v2, Lcom/google/zxing/datamatrix/a/c$a;->TEXT_ENCODE$6e85352:I

    sub-int/2addr v2, v0

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/google/zxing/datamatrix/a/c$1;->a:[I

    sget v2, Lcom/google/zxing/datamatrix/a/c$a;->ANSIX12_ENCODE$6e85352:I

    sub-int/2addr v2, v0

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/google/zxing/datamatrix/a/c$1;->a:[I

    sget v2, Lcom/google/zxing/datamatrix/a/c$a;->EDIFACT_ENCODE$6e85352:I

    sub-int/2addr v2, v0

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/google/zxing/datamatrix/a/c$1;->a:[I

    sget v2, Lcom/google/zxing/datamatrix/a/c$a;->BASE256_ENCODE$6e85352:I

    sub-int/2addr v2, v0

    const/4 v0, 0x5

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
