.class public final Lc/c/a/e/g/d;
.super Ljava/lang/Object;
.source "DownloadModel.kt"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget v0, p0, Lc/c/a/e/g/d;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lc/c/a/e/g/d;->a:I

    iget v0, p0, Lc/c/a/e/g/d;->a:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/e/g/d;->a:I

    return v0
.end method
