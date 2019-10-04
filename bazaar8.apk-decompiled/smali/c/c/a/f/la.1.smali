.class public abstract Lc/c/a/f/la;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemEditorChoiceHeaderBinding.java"


# instance fields
.field public final A:Landroid/widget/Space;

.field public final B:Landroidx/appcompat/widget/AppCompatImageView;

.field public final C:Landroidx/appcompat/widget/AppCompatTextView;

.field public final D:Lcom/farsitel/bazaar/widget/CoverForeground;

.field public final E:Landroidx/appcompat/widget/AppCompatImageView;

.field public F:Lcom/farsitel/bazaar/common/model/page/ListItem$EditorChoiceHeader;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Space;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/farsitel/bazaar/widget/CoverForeground;Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/la;->A:Landroid/widget/Space;

    .line 3
    iput-object p5, p0, Lc/c/a/f/la;->B:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    iput-object p6, p0, Lc/c/a/f/la;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    iput-object p7, p0, Lc/c/a/f/la;->D:Lcom/farsitel/bazaar/widget/CoverForeground;

    .line 6
    iput-object p8, p0, Lc/c/a/f/la;->E:Landroidx/appcompat/widget/AppCompatImageView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/la;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/la;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/la;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/la;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00b9

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/la;

    return-object p0
.end method
