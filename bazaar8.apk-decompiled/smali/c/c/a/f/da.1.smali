.class public abstract Lc/c/a/f/da;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemCinemaEpisodeBinding.java"


# instance fields
.field public final A:Lcom/farsitel/bazaar/widget/LoadingButton;

.field public final B:Landroidx/appcompat/widget/AppCompatTextView;

.field public C:Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;

.field public D:Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/farsitel/bazaar/widget/LoadingButton;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/da;->A:Lcom/farsitel/bazaar/widget/LoadingButton;

    .line 3
    iput-object p5, p0, Lc/c/a/f/da;->B:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/da;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/da;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/da;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/da;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00b4

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/da;

    return-object p0
.end method
