.class public Lc/e/a/c/w/a;
.super Ljava/lang/Object;
.source "ExpandableBehavior.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/ExpandableBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:I

.field public final synthetic c:Lc/e/a/c/j/b;

.field public final synthetic d:Lcom/google/android/material/transformation/ExpandableBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/ExpandableBehavior;Landroid/view/View;ILc/e/a/c/j/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/w/a;->d:Lcom/google/android/material/transformation/ExpandableBehavior;

    iput-object p2, p0, Lc/e/a/c/w/a;->a:Landroid/view/View;

    iput p3, p0, Lc/e/a/c/w/a;->b:I

    iput-object p4, p0, Lc/e/a/c/w/a;->c:Lc/e/a/c/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/c/w/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Lc/e/a/c/w/a;->d:Lcom/google/android/material/transformation/ExpandableBehavior;

    invoke-static {v0}, Lcom/google/android/material/transformation/ExpandableBehavior;->a(Lcom/google/android/material/transformation/ExpandableBehavior;)I

    move-result v0

    iget v1, p0, Lc/e/a/c/w/a;->b:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lc/e/a/c/w/a;->d:Lcom/google/android/material/transformation/ExpandableBehavior;

    iget-object v1, p0, Lc/e/a/c/w/a;->c:Lc/e/a/c/j/b;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lc/e/a/c/w/a;->a:Landroid/view/View;

    invoke-interface {v1}, Lc/e/a/c/j/b;->a()Z

    move-result v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/android/material/transformation/ExpandableBehavior;->a(Landroid/view/View;Landroid/view/View;ZZ)Z

    :cond_0
    return v2
.end method
