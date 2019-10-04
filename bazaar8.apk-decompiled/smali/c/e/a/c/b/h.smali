.class public Lc/e/a/c/b/h;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
.source "ViewOffsetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public a:Lc/e/a/c/b/i;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc/e/a/c/b/h;->b:I

    .line 3
    iput v0, p0, Lc/e/a/c/b/h;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lc/e/a/c/b/h;->b:I

    .line 6
    iput p1, p0, Lc/e/a/c/b/h;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 5
    iget-object v0, p0, Lc/e/a/c/b/h;->a:Lc/e/a/c/b/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/e/a/c/b/i;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(Landroid/view/View;I)V

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/c/b/h;->a:Lc/e/a/c/b/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lc/e/a/c/b/i;->b(I)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iput p1, p0, Lc/e/a/c/b/h;->b:I

    const/4 p1, 0x0

    return p1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/c/b/h;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 2
    iget-object p1, p0, Lc/e/a/c/b/h;->a:Lc/e/a/c/b/i;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lc/e/a/c/b/i;

    invoke-direct {p1, p2}, Lc/e/a/c/b/i;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lc/e/a/c/b/h;->a:Lc/e/a/c/b/i;

    .line 4
    :cond_0
    iget-object p1, p0, Lc/e/a/c/b/h;->a:Lc/e/a/c/b/i;

    invoke-virtual {p1}, Lc/e/a/c/b/i;->c()V

    .line 5
    iget p1, p0, Lc/e/a/c/b/h;->b:I

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 6
    iget-object p3, p0, Lc/e/a/c/b/h;->a:Lc/e/a/c/b/i;

    invoke-virtual {p3, p1}, Lc/e/a/c/b/i;->b(I)Z

    .line 7
    iput p2, p0, Lc/e/a/c/b/h;->b:I

    .line 8
    :cond_1
    iget p1, p0, Lc/e/a/c/b/h;->c:I

    if-eqz p1, :cond_2

    .line 9
    iget-object p3, p0, Lc/e/a/c/b/h;->a:Lc/e/a/c/b/i;

    invoke-virtual {p3, p1}, Lc/e/a/c/b/i;->a(I)Z

    .line 10
    iput p2, p0, Lc/e/a/c/b/h;->c:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
