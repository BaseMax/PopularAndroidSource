.class final Lcom/koushikdutta/async/http/d/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/koushikdutta/async/http/d/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHUNK$7ff18bd8:I = 0x4

.field public static final CHUNK_CR$7ff18bd8:I = 0x5

.field public static final CHUNK_CRLF$7ff18bd8:I = 0x6

.field public static final CHUNK_LEN$7ff18bd8:I = 0x1

.field public static final CHUNK_LEN_CR$7ff18bd8:I = 0x2

.field public static final CHUNK_LEN_CRLF$7ff18bd8:I = 0x3

.field public static final COMPLETE$7ff18bd8:I = 0x7

.field private static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 13
    sget v1, Lcom/koushikdutta/async/http/d/b$a;->CHUNK_LEN$7ff18bd8:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/koushikdutta/async/http/d/b$a;->CHUNK_LEN_CR$7ff18bd8:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/koushikdutta/async/http/d/b$a;->CHUNK_LEN_CRLF$7ff18bd8:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/koushikdutta/async/http/d/b$a;->CHUNK$7ff18bd8:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/koushikdutta/async/http/d/b$a;->CHUNK_CR$7ff18bd8:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/koushikdutta/async/http/d/b$a;->CHUNK_CRLF$7ff18bd8:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/koushikdutta/async/http/d/b$a;->COMPLETE$7ff18bd8:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sput-object v0, Lcom/koushikdutta/async/http/d/b$a;->a:[I

    return-void
.end method

.method public static values$c9b1512()[I
    .locals 1

    .line 13
    sget-object v0, Lcom/koushikdutta/async/http/d/b$a;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
