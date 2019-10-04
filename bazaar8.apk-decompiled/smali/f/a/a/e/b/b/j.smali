.class public Lf/a/a/e/b/b/j;
.super Ljava/lang/Object;
.source "ChoicesInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/b/l;->a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/b/b/o;

.field public final synthetic b:Lf/a/a/e/g;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Lf/a/a/e/b/b/l;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/b/l;Lf/a/a/e/b/b/o;Lf/a/a/e/g;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/j;->d:Lf/a/a/e/b/b/l;

    iput-object p2, p0, Lf/a/a/e/b/b/j;->a:Lf/a/a/e/b/b/o;

    iput-object p3, p0, Lf/a/a/e/b/b/j;->b:Lf/a/a/e/g;

    iput-object p4, p0, Lf/a/a/e/b/b/j;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/a/a/e/b/b/j;->a:Lf/a/a/e/b/b/o;

    invoke-virtual {p1}, Lf/a/a/e/b/b/A;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/a/a/e/b/b/j;->a:Lf/a/a/e/b/b/o;

    iget-object v0, p0, Lf/a/a/e/b/b/j;->b:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lf/a/a/e/b/b/j;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1}, Lf/a/a/e/b/b/A;->a(Landroidx/core/widget/NestedScrollView;Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lf/a/a/e/b/b/j;->a:Lf/a/a/e/b/b/o;

    invoke-virtual {p1}, Lf/a/a/e/b/b/A;->a()V

    :goto_0
    return-void
.end method
