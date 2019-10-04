.class public abstract Lc/c/a/f/Dc;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemVitrinSerialBinding.java"


# instance fields
.field public final A:Landroid/widget/LinearLayout;

.field public final B:Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;

.field public final C:Landroidx/appcompat/widget/AppCompatTextView;

.field public final D:Lcom/farsitel/bazaar/widget/AutosizingTextView;

.field public final E:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

.field public F:Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;

.field public G:Lc/c/a/n/c/d/m;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/farsitel/bazaar/widget/AutosizingTextView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/Dc;->A:Landroid/widget/LinearLayout;

    .line 3
    iput-object p5, p0, Lc/c/a/f/Dc;->B:Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;

    .line 4
    iput-object p6, p0, Lc/c/a/f/Dc;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    iput-object p7, p0, Lc/c/a/f/Dc;->D:Lcom/farsitel/bazaar/widget/AutosizingTextView;

    .line 6
    iput-object p8, p0, Lc/c/a/f/Dc;->E:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Dc;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/Dc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/Dc;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/Dc;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00f8

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/Dc;

    return-object p0
.end method
