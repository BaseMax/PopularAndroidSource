.class final Lcom/bumptech/glide/e/j$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/e/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/e/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final CLEARED$613311b9:I = 0x6

.field public static final COMPLETE$613311b9:I = 0x4

.field public static final FAILED$613311b9:I = 0x5

.field public static final PENDING$613311b9:I = 0x1

.field public static final RUNNING$613311b9:I = 0x2

.field public static final WAITING_FOR_SIZE$613311b9:I = 0x3

.field private static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 57
    sget v1, Lcom/bumptech/glide/e/j$a;->PENDING$613311b9:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/bumptech/glide/e/j$a;->RUNNING$613311b9:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/bumptech/glide/e/j$a;->WAITING_FOR_SIZE$613311b9:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/bumptech/glide/e/j$a;->COMPLETE$613311b9:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/bumptech/glide/e/j$a;->FAILED$613311b9:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/bumptech/glide/e/j$a;->CLEARED$613311b9:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sput-object v0, Lcom/bumptech/glide/e/j$a;->a:[I

    return-void
.end method

.method public static values$43a1017f()[I
    .locals 1

    .line 57
    sget-object v0, Lcom/bumptech/glide/e/j$a;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
