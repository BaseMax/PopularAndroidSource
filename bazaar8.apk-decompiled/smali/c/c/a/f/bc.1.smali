.class public abstract Lc/c/a/f/bc;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemVideoDetailVideoActionsBinding.java"


# instance fields
.field public final A:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final B:Landroid/widget/ProgressBar;

.field public final C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

.field public final D:Landroidx/appcompat/widget/AppCompatImageView;

.field public final E:Landroid/view/View;

.field public final F:Lcom/google/android/material/button/MaterialButton;

.field public final G:Landroidx/constraintlayout/widget/Group;

.field public final H:Lcom/farsitel/bazaar/widget/LoadingButton;

.field public final I:Lcom/google/android/material/button/MaterialButton;

.field public J:Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

.field public K:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ProgressBar;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;Lcom/google/android/material/button/MaterialButton;Landroidx/constraintlayout/widget/Group;Lcom/farsitel/bazaar/widget/LoadingButton;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/bc;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p5, p0, Lc/c/a/f/bc;->B:Landroid/widget/ProgressBar;

    .line 4
    iput-object p6, p0, Lc/c/a/f/bc;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    .line 5
    iput-object p7, p0, Lc/c/a/f/bc;->D:Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    iput-object p8, p0, Lc/c/a/f/bc;->E:Landroid/view/View;

    .line 7
    iput-object p9, p0, Lc/c/a/f/bc;->F:Lcom/google/android/material/button/MaterialButton;

    .line 8
    iput-object p10, p0, Lc/c/a/f/bc;->G:Landroidx/constraintlayout/widget/Group;

    .line 9
    iput-object p11, p0, Lc/c/a/f/bc;->H:Lcom/farsitel/bazaar/widget/LoadingButton;

    .line 10
    iput-object p12, p0, Lc/c/a/f/bc;->I:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/bc;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/bc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/bc;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/bc;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00ea

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/bc;

    return-object p0
.end method
