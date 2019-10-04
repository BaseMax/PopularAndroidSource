.class public final Lc/c/a/n/c/d/e;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "BaseRecyclerDaggerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/d/f;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/c/d/f;

.field public final synthetic b:Lc/c/a/n/c/d/a;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/d/f;Lc/c/a/n/c/d/a;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/c/d/e;->a:Lc/c/a/n/c/d/f;

    iput-object p2, p0, Lc/c/a/n/c/d/e;->b:Lc/c/a/n/c/d/a;

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/c/d/e;->a:Lc/c/a/n/c/d/f;

    invoke-static {p1}, Lc/c/a/n/c/d/f;->a(Lc/c/a/n/c/d/f;)V

    return-void
.end method
