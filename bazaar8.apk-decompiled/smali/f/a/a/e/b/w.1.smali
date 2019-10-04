.class public Lf/a/a/e/b/w;
.super Ljava/lang/Object;
.source "ListInflater.java"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/x;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/b/x;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/w;->a:Lf/a/a/e/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/a/a/e/b/w;->a:Lf/a/a/e/b/x;

    iget-object p1, p1, Lf/a/a/e/b/x;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    iget-object p2, p0, Lf/a/a/e/b/w;->a:Lf/a/a/e/b/x;

    iget-object p2, p2, Lf/a/a/e/b/x;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    const/4 p2, 0x2

    .line 2
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    .line 3
    iget-object p3, p0, Lf/a/a/e/b/w;->a:Lf/a/a/e/b/x;

    iget-object p3, p3, Lf/a/a/e/b/x;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 4
    iget-object p3, p0, Lf/a/a/e/b/w;->a:Lf/a/a/e/b/x;

    iget-object p3, p3, Lf/a/a/e/b/x;->c:Lf/a/a/e/g;

    invoke-interface {p3}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 p4, 0x1

    .line 5
    aget p2, p2, p4

    add-int/2addr p1, p2

    sub-int/2addr p1, p3

    if-ge p1, p3, :cond_0

    .line 6
    iget-object p1, p0, Lf/a/a/e/b/w;->a:Lf/a/a/e/b/x;

    iget-object p1, p1, Lf/a/a/e/b/x;->d:Lf/a/a/e/b/y$a;

    invoke-interface {p1}, Lf/a/a/e/b/y$a;->a()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
