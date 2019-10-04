.class final Lcom/github/ybq/android/spinkit/c/e$a;
.super Lcom/github/ybq/android/spinkit/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/github/ybq/android/spinkit/c/e;


# direct methods
.method constructor <init>(Lcom/github/ybq/android/spinkit/c/e;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/github/ybq/android/spinkit/c/e$a;->b:Lcom/github/ybq/android/spinkit/c/e;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/b;-><init>()V

    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/c/e$a;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public final onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 38
    fill-array-data v1, :array_0

    .line 39
    new-instance v2, Lcom/github/ybq/android/spinkit/a/d;

    invoke-direct {v2, p0}, Lcom/github/ybq/android/spinkit/a/d;-><init>(Lcom/github/ybq/android/spinkit/b/f;)V

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v3, 0x0

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    aput-object v4, v0, v3

    const/16 v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v0, v5

    const/4 v3, 0x3

    aput-object v4, v0, v3

    invoke-virtual {v2, v1, v0}, Lcom/github/ybq/android/spinkit/a/d;->alpha([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    const-wide/16 v2, 0x4b0

    .line 41
    invoke-virtual {v0, v2, v3}, Lcom/github/ybq/android/spinkit/a/d;->duration(J)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Lcom/github/ybq/android/spinkit/a/d;->easeInOut([F)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/ybq/android/spinkit/a/d;->build()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3ec7ae14    # 0.39f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method
