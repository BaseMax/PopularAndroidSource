.class public abstract Lc/c/a/f/jc;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemVideoDetailVideoScreenshotCoverItemBinding.java"


# instance fields
.field public final A:Landroid/view/View;

.field public final B:Landroidx/cardview/widget/CardView;

.field public final C:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final D:Landroidx/appcompat/widget/AppCompatImageView;

.field public final E:Landroidx/appcompat/widget/AppCompatTextView;

.field public F:Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroidx/cardview/widget/CardView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/jc;->A:Landroid/view/View;

    .line 3
    iput-object p5, p0, Lc/c/a/f/jc;->B:Landroidx/cardview/widget/CardView;

    .line 4
    iput-object p6, p0, Lc/c/a/f/jc;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    iput-object p7, p0, Lc/c/a/f/jc;->D:Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    iput-object p8, p0, Lc/c/a/f/jc;->E:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/jc;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/jc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/jc;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/jc;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00ee

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/jc;

    return-object p0
.end method
