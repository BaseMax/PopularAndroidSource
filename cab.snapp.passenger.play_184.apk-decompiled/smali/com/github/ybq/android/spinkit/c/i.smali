.class public final Lcom/github/ybq/android/spinkit/c/i;
.super Lcom/github/ybq/android/spinkit/b/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/b;-><init>()V

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/c/i;->setScale(F)V

    return-void
.end method


# virtual methods
.method public final onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 19
    fill-array-data v1, :array_0

    .line 20
    new-instance v2, Lcom/github/ybq/android/spinkit/a/d;

    invoke-direct {v2, p0}, Lcom/github/ybq/android/spinkit/a/d;-><init>(Lcom/github/ybq/android/spinkit/b/f;)V

    new-array v3, v0, [Ljava/lang/Float;

    const/4 v4, 0x0

    .line 21
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Lcom/github/ybq/android/spinkit/a/d;->scale([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v3, 0xff

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-virtual {v2, v1, v0}, Lcom/github/ybq/android/spinkit/a/d;->alpha([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    .line 23
    invoke-virtual {v0, v2, v3}, Lcom/github/ybq/android/spinkit/a/d;->duration(J)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v1}, Lcom/github/ybq/android/spinkit/a/d;->easeInOut([F)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/github/ybq/android/spinkit/a/d;->build()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
