.class public abstract Lc/c/a/f/i;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentMoreArticleBinding.java"


# instance fields
.field public final A:Lcom/google/android/material/appbar/AppBarLayout;

.field public final B:Landroidx/appcompat/widget/AppCompatImageView;

.field public final C:Landroidx/appcompat/widget/AppCompatTextView;

.field public final D:Landroidx/appcompat/widget/AppCompatTextView;

.field public final E:Landroidx/recyclerview/widget/RecyclerView;

.field public final F:Landroidx/appcompat/widget/Toolbar;

.field public final G:Lcom/farsitel/bazaar/widget/RTLImageView;

.field public H:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/appbar/AppBarLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/Toolbar;Lcom/farsitel/bazaar/widget/RTLImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/i;->A:Lcom/google/android/material/appbar/AppBarLayout;

    .line 3
    iput-object p5, p0, Lc/c/a/f/i;->B:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    iput-object p6, p0, Lc/c/a/f/i;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    iput-object p7, p0, Lc/c/a/f/i;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    iput-object p8, p0, Lc/c/a/f/i;->E:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iput-object p9, p0, Lc/c/a/f/i;->F:Landroidx/appcompat/widget/Toolbar;

    .line 8
    iput-object p10, p0, Lc/c/a/f/i;->G:Lcom/farsitel/bazaar/widget/RTLImageView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/i;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/i;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/i;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/i;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0058

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/i;

    return-object p0
.end method
