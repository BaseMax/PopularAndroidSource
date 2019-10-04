.class final Lcom/github/ybq/android/spinkit/c/n$a;
.super Lcom/github/ybq/android/spinkit/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field b:I

.field final synthetic c:Lcom/github/ybq/android/spinkit/c/n;


# direct methods
.method public constructor <init>(Lcom/github/ybq/android/spinkit/c/n;I)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/github/ybq/android/spinkit/c/n$a;->c:Lcom/github/ybq/android/spinkit/c/n;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/c;-><init>()V

    .line 52
    iput p2, p0, Lcom/github/ybq/android/spinkit/c/n$a;->b:I

    return-void
.end method


# virtual methods
.method public final onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 12

    const/4 v0, 0x6

    new-array v1, v0, [F

    .line 57
    fill-array-data v1, :array_0

    .line 58
    new-instance v2, Lcom/github/ybq/android/spinkit/a/d;

    invoke-direct {v2, p0}, Lcom/github/ybq/android/spinkit/a/d;-><init>(Lcom/github/ybq/android/spinkit/b/f;)V

    new-array v3, v0, [Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v5, -0x5a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/16 v5, -0xb3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v3, v7

    const/16 v5, -0xb4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v3, v8

    const/16 v5, -0x10e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x4

    aput-object v5, v3, v9

    const/16 v5, -0x168

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x5

    aput-object v5, v3, v10

    invoke-virtual {v2, v1, v3}, Lcom/github/ybq/android/spinkit/a/d;->rotate([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Float;

    const/4 v5, 0x0

    .line 60
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/high16 v11, 0x3f400000    # 0.75f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v3, v6

    aput-object v11, v3, v7

    aput-object v11, v3, v8

    aput-object v5, v3, v9

    aput-object v5, v3, v10

    invoke-virtual {v2, v1, v3}, Lcom/github/ybq/android/spinkit/a/d;->translateXPercentage([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Float;

    aput-object v5, v3, v4

    aput-object v5, v3, v6

    aput-object v11, v3, v7

    aput-object v11, v3, v8

    aput-object v11, v3, v9

    aput-object v5, v3, v10

    .line 61
    invoke-virtual {v2, v1, v3}, Lcom/github/ybq/android/spinkit/a/d;->translateYPercentage([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Float;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 62
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v6

    aput-object v3, v0, v7

    aput-object v3, v0, v8

    aput-object v4, v0, v9

    aput-object v3, v0, v10

    invoke-virtual {v2, v1, v0}, Lcom/github/ybq/android/spinkit/a/d;->scale([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    const-wide/16 v2, 0x708

    .line 63
    invoke-virtual {v0, v2, v3}, Lcom/github/ybq/android/spinkit/a/d;->duration(J)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v1}, Lcom/github/ybq/android/spinkit/a/d;->easeInOut([F)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    .line 65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 66
    iget v1, p0, Lcom/github/ybq/android/spinkit/c/n$a;->b:I

    .line 67
    invoke-virtual {v0, v1}, Lcom/github/ybq/android/spinkit/a/d;->startFrame(I)Lcom/github/ybq/android/spinkit/a/d;

    .line 69
    :cond_0
    invoke-virtual {v0}, Lcom/github/ybq/android/spinkit/a/d;->build()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f028f5c    # 0.51f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method
