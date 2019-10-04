.class public abstract Lc/c/a/f/o;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentMoreReviewBinding.java"


# instance fields
.field public final A:Lcom/google/android/material/appbar/AppBarLayout;

.field public final B:Landroidx/appcompat/widget/AppCompatImageView;

.field public final C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

.field public final D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

.field public final E:Landroidx/recyclerview/widget/RecyclerView;

.field public final F:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final G:Lcom/farsitel/bazaar/widget/RTLImageView;

.field public final H:Landroidx/appcompat/widget/Toolbar;

.field public I:Ljava/lang/Boolean;

.field public J:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/appbar/AppBarLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/farsitel/bazaar/widget/RTLImageView;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/o;->A:Lcom/google/android/material/appbar/AppBarLayout;

    .line 3
    iput-object p5, p0, Lc/c/a/f/o;->B:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    iput-object p6, p0, Lc/c/a/f/o;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    .line 5
    iput-object p7, p0, Lc/c/a/f/o;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    .line 6
    iput-object p8, p0, Lc/c/a/f/o;->E:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iput-object p9, p0, Lc/c/a/f/o;->F:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 8
    iput-object p10, p0, Lc/c/a/f/o;->G:Lcom/farsitel/bazaar/widget/RTLImageView;

    .line 9
    iput-object p11, p0, Lc/c/a/f/o;->H:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/o;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/o;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/o;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/o;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d005b

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/o;

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)V
.end method
