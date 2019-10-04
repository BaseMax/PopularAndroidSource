.class public final Lc/c/a/n/b/c/d;
.super Ljava/lang/Object;
.source "ReportFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/b/c/e;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/b/c/e;


# direct methods
.method public constructor <init>(Lc/c/a/n/b/c/e;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/b/c/d;->a:Lc/c/a/n/b/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/c/d;->a:Lc/c/a/n/b/c/e;

    iget-object v0, v0, Lc/c/a/n/b/c/e;->b:Landroid/view/View;

    sget v1, Lc/c/a/e;->nsReport:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lc/c/a/n/b/c/d;->a:Lc/c/a/n/b/c/e;

    iget-object v1, v1, Lc/c/a/n/b/c/e;->b:Landroid/view/View;

    sget v2, Lc/c/a/e;->nsReport:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    const-string v2, "view.nsReport"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/core/widget/NestedScrollView;->b(II)V

    return-void
.end method
