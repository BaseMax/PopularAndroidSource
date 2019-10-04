.class final Lcom/google/zxing/a/a/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/a/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final BINARY$2679db95:I = 0x6

.field public static final DIGIT$2679db95:I = 0x4

.field public static final LOWER$2679db95:I = 0x2

.field public static final MIXED$2679db95:I = 0x3

.field public static final PUNCT$2679db95:I = 0x5

.field public static final UPPER$2679db95:I = 0x1

.field private static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 37
    sget v1, Lcom/google/zxing/a/a/a$a;->UPPER$2679db95:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/a/a/a$a;->LOWER$2679db95:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/a/a/a$a;->MIXED$2679db95:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/a/a/a$a;->DIGIT$2679db95:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/a/a/a$a;->PUNCT$2679db95:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/google/zxing/a/a/a$a;->BINARY$2679db95:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sput-object v0, Lcom/google/zxing/a/a/a$a;->a:[I

    return-void
.end method

.method public static values$17d9718f()[I
    .locals 1

    .line 37
    sget-object v0, Lcom/google/zxing/a/a/a$a;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
