.class public abstract Lc/c/a/f/s;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentPostCommentBinding.java"


# instance fields
.field public final A:Lcom/google/android/material/appbar/AppBarLayout;

.field public final B:Landroidx/appcompat/widget/AppCompatImageView;

.field public final C:Landroidx/appcompat/widget/AppCompatTextView;

.field public final D:Lcom/google/android/material/button/MaterialButton;

.field public final E:Landroidx/appcompat/widget/AppCompatEditText;

.field public final F:Landroidx/appcompat/widget/AppCompatTextView;

.field public final G:Landroid/widget/RatingBar;

.field public final H:Landroidx/appcompat/widget/Toolbar;

.field public final I:Landroidx/appcompat/widget/AppCompatImageView;

.field public final J:Landroidx/appcompat/widget/AppCompatTextView;

.field public K:Ljava/lang/Integer;

.field public L:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/appbar/AppBarLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/google/android/material/button/MaterialButton;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/RatingBar;Landroidx/appcompat/widget/Toolbar;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/s;->A:Lcom/google/android/material/appbar/AppBarLayout;

    .line 3
    iput-object p5, p0, Lc/c/a/f/s;->B:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    iput-object p6, p0, Lc/c/a/f/s;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    iput-object p7, p0, Lc/c/a/f/s;->D:Lcom/google/android/material/button/MaterialButton;

    .line 6
    iput-object p8, p0, Lc/c/a/f/s;->E:Landroidx/appcompat/widget/AppCompatEditText;

    .line 7
    iput-object p9, p0, Lc/c/a/f/s;->F:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    iput-object p10, p0, Lc/c/a/f/s;->G:Landroid/widget/RatingBar;

    .line 9
    iput-object p11, p0, Lc/c/a/f/s;->H:Landroidx/appcompat/widget/Toolbar;

    .line 10
    iput-object p12, p0, Lc/c/a/f/s;->I:Landroidx/appcompat/widget/AppCompatImageView;

    .line 11
    iput-object p13, p0, Lc/c/a/f/s;->J:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/s;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/s;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/s;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/s;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0060

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/s;

    return-object p0
.end method
