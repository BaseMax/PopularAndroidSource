.class public Lf/a/a/e/b/b/z;
.super Ljava/lang/Object;
.source "InlinePopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/b/A;->a(Landroidx/core/widget/NestedScrollView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/FrameLayout$LayoutParams;

.field public final synthetic b:Landroidx/core/widget/NestedScrollView;

.field public final synthetic c:Lf/a/a/e/b/b/A;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/b/A;Landroid/widget/FrameLayout$LayoutParams;Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/z;->c:Lf/a/a/e/b/b/A;

    iput-object p2, p0, Lf/a/a/e/b/b/z;->a:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p3, p0, Lf/a/a/e/b/b/z;->b:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/z;->a:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lf/a/a/e/b/b/z;->b:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lf/a/a/e/b/b/z;->c:Lf/a/a/e/b/b/A;

    invoke-static {v0}, Lf/a/a/e/b/b/A;->a(Lf/a/a/e/b/b/A;)Lf/a/a/e/b/b/A$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lf/a/a/e/b/b/z;->c:Lf/a/a/e/b/b/A;

    invoke-static {v0}, Lf/a/a/e/b/b/A;->a(Lf/a/a/e/b/b/A;)Lf/a/a/e/b/b/A$a;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/b/b/A$a;->onDismiss()V

    .line 5
    :cond_1
    invoke-static {}, Lf/a/a/a/a/b;->a()Lf/a/a/a/a/b;

    move-result-object v0

    new-instance v1, Lf/a/a/a/a/a;

    invoke-direct {v1}, Lf/a/a/a/a/a;-><init>()V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lf/a/a/a/a/a;->a(J)Lf/a/a/a/a/a;

    const-string v2, "user"

    .line 7
    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->a(Ljava/lang/String;)Lf/a/a/a/a/a;

    const-string v2, "inline_popup"

    .line 8
    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->b(Ljava/lang/String;)Lf/a/a/a/a/a;

    const-string v2, "action"

    const-string v3, "dismiss"

    .line 9
    invoke-virtual {v1, v2, v3}, Lf/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    iget-object v2, p0, Lf/a/a/e/b/b/z;->c:Lf/a/a/e/b/b/A;

    .line 10
    invoke-static {v2}, Lf/a/a/e/b/b/A;->b(Lf/a/a/e/b/b/A;)Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/InlineActivity;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/platform/InlineApplication;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->c(Ljava/lang/String;)Lf/a/a/a/a/a;

    iget-object v2, p0, Lf/a/a/e/b/b/z;->c:Lf/a/a/e/b/b/A;

    .line 11
    invoke-static {v2}, Lf/a/a/e/b/b/A;->b(Lf/a/a/e/b/b/A;)Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/InlineActivity;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lf/a/a/g/d/d;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v1, v3, v2}, Lf/a/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    .line 12
    invoke-virtual {v0, v1}, Lf/a/a/a/a/b;->a(Lf/a/a/a/a/a;)V

    return-void
.end method
