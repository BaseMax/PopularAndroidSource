.class public abstract Lc/c/a/f/eb;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemProfileHeaderBinding.java"


# instance fields
.field public A:Lcom/farsitel/bazaar/ui/profile/ProfileHeaderItem;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/eb;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/eb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/eb;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/eb;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00d1

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/eb;

    return-object p0
.end method