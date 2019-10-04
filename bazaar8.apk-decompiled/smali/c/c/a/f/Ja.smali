.class public abstract Lc/c/a/f/Ja;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemListVideoBinding.java"


# instance fields
.field public final A:Landroid/view/View;

.field public final B:Landroidx/appcompat/widget/AppCompatImageView;

.field public final C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

.field public final D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

.field public final E:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

.field public final F:Lcom/farsitel/bazaar/widget/LoadingButton;

.field public G:Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

.field public H:Ljava/lang/Integer;

.field public I:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

.field public J:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

.field public K:Lc/c/a/n/c/c/a/a/a/k;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Lcom/farsitel/bazaar/widget/LoadingButton;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/Ja;->A:Landroid/view/View;

    .line 3
    iput-object p5, p0, Lc/c/a/f/Ja;->B:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    iput-object p6, p0, Lc/c/a/f/Ja;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    .line 5
    iput-object p7, p0, Lc/c/a/f/Ja;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    .line 6
    iput-object p8, p0, Lc/c/a/f/Ja;->E:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    .line 7
    iput-object p9, p0, Lc/c/a/f/Ja;->F:Lcom/farsitel/bazaar/widget/LoadingButton;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Ja;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/Ja;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/Ja;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/Ja;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00c5

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/Ja;

    return-object p0
.end method
