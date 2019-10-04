.class public Lb/y/a/N$a;
.super Lb/i/k/a;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/y/a/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final d:Lb/y/a/N;


# direct methods
.method public constructor <init>(Lb/y/a/N;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/i/k/a;-><init>()V

    .line 2
    iput-object p1, p0, Lb/y/a/N$a;->d:Lb/y/a/N;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/i/k/a/d;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lb/i/k/a;->a(Landroid/view/View;Lb/i/k/a/d;)V

    .line 2
    iget-object v0, p0, Lb/y/a/N$a;->d:Lb/y/a/N;

    invoke-virtual {v0}, Lb/y/a/N;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/y/a/N$a;->d:Lb/y/a/N;

    iget-object v0, v0, Lb/y/a/N;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lb/y/a/N$a;->d:Lb/y/a/N;

    iget-object v0, v0, Lb/y/a/N;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;Lb/i/k/a/d;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 6
    invoke-super {p0, p1, p2, p3}, Lb/i/k/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Lb/y/a/N$a;->d:Lb/y/a/N;

    invoke-virtual {v0}, Lb/y/a/N;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/y/a/N$a;->d:Lb/y/a/N;

    iget-object v0, v0, Lb/y/a/N;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lb/y/a/N$a;->d:Lb/y/a/N;

    iget-object v0, v0, Lb/y/a/N;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
