.class public abstract Lf/a/a/e/b/n;
.super Ljava/lang/Object;
.source "ElementInflater.java"

# interfaces
.implements Lf/a/a/e/b/Y;


# instance fields
.field public a:Ljava/lang/String;

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lf/a/a/e/b/n;->b:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    .line 4
    iget v0, p0, Lf/a/a/e/b/n;->b:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lf/a/a/e/g;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/a/a/e/b/n;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lf/a/a/e/b/n;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lf/a/a/e/b/n;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public abstract a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 6
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lf/a/a/e/b/n;->b:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public abstract b()I
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/n;->a:Ljava/lang/String;

    return-void
.end method
