.class public Lb/x/z;
.super Lb/i/k/a;
.source "PreferenceRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/x/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lb/x/A;


# direct methods
.method public constructor <init>(Lb/x/A;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/x/z;->d:Lb/x/A;

    invoke-direct {p0}, Lb/i/k/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/i/k/a/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/x/z;->d:Lb/x/A;

    iget-object v0, v0, Lb/x/A;->g:Lb/i/k/a;

    invoke-virtual {v0, p1, p2}, Lb/i/k/a;->a(Landroid/view/View;Lb/i/k/a/d;)V

    .line 2
    iget-object v0, p0, Lb/x/z;->d:Lb/x/A;

    iget-object v0, v0, Lb/x/A;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lb/x/z;->d:Lb/x/A;

    iget-object v0, v0, Lb/x/A;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lb/x/w;

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    check-cast v0, Lb/x/w;

    .line 6
    invoke-virtual {v0, p1}, Lb/x/w;->f(I)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->a(Lb/i/k/a/d;)V

    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 8
    iget-object v0, p0, Lb/x/z;->d:Lb/x/A;

    iget-object v0, v0, Lb/x/A;->g:Lb/i/k/a;

    invoke-virtual {v0, p1, p2, p3}, Lb/i/k/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
