.class public final Lcom/github/ybq/android/spinkit/c/e;
.super Lcom/github/ybq/android/spinkit/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/c/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateChild()[Lcom/github/ybq/android/spinkit/b/f;
    .locals 5

    const/16 v0, 0xc

    new-array v1, v0, [Lcom/github/ybq/android/spinkit/c/e$a;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 20
    new-instance v3, Lcom/github/ybq/android/spinkit/c/e$a;

    invoke-direct {v3, p0}, Lcom/github/ybq/android/spinkit/c/e$a;-><init>(Lcom/github/ybq/android/spinkit/c/e;)V

    aput-object v3, v1, v2

    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 22
    aget-object v3, v1, v2

    mul-int/lit8 v4, v2, 0x64

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/c/e$a;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/b/f;

    goto :goto_1

    .line 24
    :cond_0
    aget-object v3, v1, v2

    mul-int/lit8 v4, v2, 0x64

    add-int/lit16 v4, v4, -0x4b0

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/c/e$a;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/b/f;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
