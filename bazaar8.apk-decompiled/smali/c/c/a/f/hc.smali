.class public abstract Lc/c/a/f/hc;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemVideoDetailVideoInfoBinding.java"


# instance fields
.field public final A:Landroidx/recyclerview/widget/RecyclerView;

.field public final B:Lcom/farsitel/bazaar/widget/CoverForeground;

.field public final C:Landroidx/appcompat/widget/AppCompatImageView;

.field public final D:Landroidx/appcompat/widget/AppCompatTextView;

.field public final E:Landroid/widget/Space;

.field public final F:Landroidx/appcompat/widget/AppCompatImageView;

.field public final G:Landroidx/appcompat/widget/AppCompatTextView;

.field public H:Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

.field public I:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView;Lcom/farsitel/bazaar/widget/CoverForeground;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/Space;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/hc;->A:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iput-object p5, p0, Lc/c/a/f/hc;->B:Lcom/farsitel/bazaar/widget/CoverForeground;

    .line 4
    iput-object p6, p0, Lc/c/a/f/hc;->C:Landroidx/appcompat/widget/AppCompatImageView;

    .line 5
    iput-object p7, p0, Lc/c/a/f/hc;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    iput-object p8, p0, Lc/c/a/f/hc;->E:Landroid/widget/Space;

    .line 7
    iput-object p9, p0, Lc/c/a/f/hc;->F:Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    iput-object p10, p0, Lc/c/a/f/hc;->G:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/hc;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/hc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/hc;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/hc;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00ed

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/hc;

    return-object p0
.end method