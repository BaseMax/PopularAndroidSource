.class public Lc/c/a/d/h/b/z$a;
.super Lc/c/a/d/h/b/b;
.source "ThreeBounce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/d/h/b/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final synthetic H:Lc/c/a/d/h/b/z;


# direct methods
.method public constructor <init>(Lc/c/a/d/h/b/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/d/h/b/z$a;->H:Lc/c/a/d/h/b/z;

    invoke-direct {p0}, Lc/c/a/d/h/b/b;-><init>()V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/d/h/b/w;->c(F)V

    return-void
.end method


# virtual methods
.method public p()Landroid/animation/ValueAnimator;
    .locals 6

    const/4 v0, 0x4

    .line 1
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 2
    new-instance v2, Lc/c/a/d/h/b/x;

    invoke-direct {v2, p0}, Lc/c/a/d/h/b/x;-><init>(Lc/c/a/d/h/b/w;)V

    new-array v0, v0, [Ljava/lang/Float;

    const/4 v3, 0x0

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

    invoke-virtual {v2, v1, v0}, Lc/c/a/d/h/b/x;->a([F[Ljava/lang/Float;)Lc/c/a/d/h/b/x;

    const-wide/16 v3, 0x578

    .line 3
    invoke-virtual {v2, v3, v4}, Lc/c/a/d/h/b/x;->a(J)Lc/c/a/d/h/b/x;

    .line 4
    invoke-virtual {v2, v1}, Lc/c/a/d/h/b/x;->a([F)Lc/c/a/d/h/b/x;

    .line 5
    invoke-virtual {v2}, Lc/c/a/d/h/b/x;->a()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method
