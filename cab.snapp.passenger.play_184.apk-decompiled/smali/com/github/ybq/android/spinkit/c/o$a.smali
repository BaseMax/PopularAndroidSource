.class final Lcom/github/ybq/android/spinkit/c/o$a;
.super Lcom/github/ybq/android/spinkit/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/c/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/github/ybq/android/spinkit/c/o;


# direct methods
.method constructor <init>(Lcom/github/ybq/android/spinkit/c/o;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/github/ybq/android/spinkit/c/o$a;->b:Lcom/github/ybq/android/spinkit/c/o;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/c;-><init>()V

    const p1, 0x3ecccccd    # 0.4f

    .line 49
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/c/o$a;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public final onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 54
    fill-array-data v1, :array_0

    .line 55
    new-instance v2, Lcom/github/ybq/android/spinkit/a/d;

    invoke-direct {v2, p0}, Lcom/github/ybq/android/spinkit/a/d;-><init>(Lcom/github/ybq/android/spinkit/b/f;)V

    new-array v0, v0, [Ljava/lang/Float;

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/4 v4, 0x3

    aput-object v3, v0, v4

    invoke-virtual {v2, v1, v0}, Lcom/github/ybq/android/spinkit/a/d;->scaleY([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    const-wide/16 v2, 0x4b0

    .line 56
    invoke-virtual {v0, v2, v3}, Lcom/github/ybq/android/spinkit/a/d;->duration(J)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Lcom/github/ybq/android/spinkit/a/d;->easeInOut([F)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/github/ybq/android/spinkit/a/d;->build()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method
