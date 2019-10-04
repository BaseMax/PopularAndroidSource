.class public Lf/a/a/e/k;
.super Ljava/lang/Object;
.source "InlineFragment.java"

# interfaces
.implements Lf/a/a/e/a/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/l;->a(Lf/a/a/e/a/o;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/graphics/Point;

.field public final synthetic c:Lf/a/a/e/l;


# direct methods
.method public constructor <init>(Lf/a/a/e/l;Landroid/view/View;Landroid/graphics/Point;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/k;->c:Lf/a/a/e/l;

    iput-object p2, p0, Lf/a/a/e/k;->a:Landroid/view/View;

    iput-object p3, p0, Lf/a/a/e/k;->b:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/a/p;)I
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/a/a/e/k;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Lf/a/a/e/a/p;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/d/g/c;->a(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lf/a/a/e/k;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lf/a/a/e/k;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    mul-int v0, v0, v1

    iget-object v1, p0, Lf/a/a/e/k;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lf/a/a/e/k;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p1

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0
    :try_end_0
    .catch Lir/cafebazaar/inline/ui/changers/exceptions/ViewNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-float p1, v0

    const/high16 v0, 0x40180000    # 2.375f

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 4
    new-instance v0, Lf/a/a/e/j;

    iget-object v1, p0, Lf/a/a/e/k;->c:Lf/a/a/e/l;

    invoke-virtual {v1}, Lf/a/a/e/l;->k()Lf/a/a/e/l;

    iget-object v2, p0, Lf/a/a/e/k;->c:Lf/a/a/e/l;

    sget v3, Lf/a/a/g;->error_general:I

    .line 5
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lf/a/a/e/k;->c:Lf/a/a/e/l;

    sget v4, Lf/a/a/g;->error_try_again_later:I

    .line 6
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lf/a/a/e/j;-><init>(Lf/a/a/e/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lf/a/a/g/c;->f()V

    const/4 p1, -0x1

    return p1
.end method
