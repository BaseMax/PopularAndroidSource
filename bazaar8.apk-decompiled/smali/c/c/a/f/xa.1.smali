.class public abstract Lc/c/a/f/xa;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemListHamiAppBinding.java"


# instance fields
.field public final A:Landroidx/appcompat/widget/AppCompatImageView;

.field public final B:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

.field public final C:Landroid/widget/FrameLayout;

.field public final D:Landroidx/appcompat/widget/AppCompatImageView;

.field public final E:Landroidx/cardview/widget/CardView;

.field public final F:Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;

.field public final G:Lcom/google/android/material/button/MaterialButton;

.field public final H:Landroid/widget/ProgressBar;

.field public final I:Landroidx/appcompat/widget/AppCompatTextView;

.field public J:Lcom/farsitel/bazaar/common/model/page/HamiItem;

.field public K:Lc/c/a/n/c/c/a/a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/cardview/widget/CardView;Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ProgressBar;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/xa;->A:Landroidx/appcompat/widget/AppCompatImageView;

    .line 3
    iput-object p5, p0, Lc/c/a/f/xa;->B:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    .line 4
    iput-object p6, p0, Lc/c/a/f/xa;->C:Landroid/widget/FrameLayout;

    .line 5
    iput-object p7, p0, Lc/c/a/f/xa;->D:Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    iput-object p8, p0, Lc/c/a/f/xa;->E:Landroidx/cardview/widget/CardView;

    .line 7
    iput-object p9, p0, Lc/c/a/f/xa;->F:Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;

    .line 8
    iput-object p10, p0, Lc/c/a/f/xa;->G:Lcom/google/android/material/button/MaterialButton;

    .line 9
    iput-object p11, p0, Lc/c/a/f/xa;->H:Landroid/widget/ProgressBar;

    .line 10
    iput-object p12, p0, Lc/c/a/f/xa;->I:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/xa;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/xa;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/xa;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/xa;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00bf

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/xa;

    return-object p0
.end method
