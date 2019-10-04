.class public abstract Lc/c/a/f/ha;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemCinemaSeasonEpisodeBinding.java"


# instance fields
.field public final A:Landroidx/constraintlayout/widget/Barrier;

.field public final B:Landroid/view/View;

.field public final C:Landroidx/appcompat/widget/AppCompatTextView;

.field public final D:Lcom/farsitel/bazaar/widget/NoDiscountTextView;

.field public final E:Landroidx/appcompat/widget/AppCompatImageView;

.field public final F:Lcom/farsitel/bazaar/widget/LoadingButton;

.field public G:Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

.field public H:Lc/c/a/n/c/c/a/a/a/i;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Barrier;Landroid/view/View;Landroidx/appcompat/widget/AppCompatTextView;Lcom/farsitel/bazaar/widget/NoDiscountTextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/LoadingButton;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/ha;->A:Landroidx/constraintlayout/widget/Barrier;

    .line 3
    iput-object p5, p0, Lc/c/a/f/ha;->B:Landroid/view/View;

    .line 4
    iput-object p6, p0, Lc/c/a/f/ha;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    iput-object p7, p0, Lc/c/a/f/ha;->D:Lcom/farsitel/bazaar/widget/NoDiscountTextView;

    .line 6
    iput-object p8, p0, Lc/c/a/f/ha;->E:Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    iput-object p9, p0, Lc/c/a/f/ha;->F:Lcom/farsitel/bazaar/widget/LoadingButton;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/ha;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/ha;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/ha;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/ha;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00b6

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/ha;

    return-object p0
.end method
