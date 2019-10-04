.class public Lf/a/a/g/e/a;
.super Ljava/lang/Object;
.source "InlineListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/g/e/b;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/core/widget/NestedScrollView;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lf/a/a/g/e/b;


# direct methods
.method public constructor <init>(Lf/a/a/g/e/b;Landroidx/core/widget/NestedScrollView;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/e/a;->c:Lf/a/a/g/e/b;

    iput-object p2, p0, Lf/a/a/g/e/a;->a:Landroidx/core/widget/NestedScrollView;

    iput-object p3, p0, Lf/a/a/g/e/a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/g/e/a;->a:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->e(I)Z

    .line 2
    iget-object v0, p0, Lf/a/a/g/e/a;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
