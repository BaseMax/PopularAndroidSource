.class public abstract Lc/c/a/f/na;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemGenreBinding.java"


# instance fields
.field public final A:Landroidx/appcompat/widget/AppCompatTextView;

.field public B:Lcom/farsitel/bazaar/common/model/cinema/GenreItem;

.field public C:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/na;->A:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;)Lc/c/a/f/na;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, v0}, Lc/c/a/f/na;->a(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lc/c/a/f/na;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lc/c/a/f/na;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00ba

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/na;

    return-object p0
.end method
