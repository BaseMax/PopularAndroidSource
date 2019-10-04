.class public abstract Lc/c/a/f/wb;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemSearchHistoryBinding.java"


# instance fields
.field public final A:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

.field public final B:Landroidx/appcompat/widget/AppCompatImageView;

.field public final C:Lcom/farsitel/bazaar/widget/RTLImageView;

.field public final D:Landroid/view/View;

.field public E:Lc/c/a/n/w/a;

.field public F:Lc/c/a/n/w/o;

.field public G:Ljava/lang/Integer;

.field public H:Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;

.field public I:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/RTLImageView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/wb;->A:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    .line 3
    iput-object p5, p0, Lc/c/a/f/wb;->B:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    iput-object p6, p0, Lc/c/a/f/wb;->C:Lcom/farsitel/bazaar/widget/RTLImageView;

    .line 5
    iput-object p7, p0, Lc/c/a/f/wb;->D:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/wb;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/wb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/wb;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/wb;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00da

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/wb;

    return-object p0
.end method
