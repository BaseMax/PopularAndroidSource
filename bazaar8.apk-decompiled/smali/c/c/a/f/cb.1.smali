.class public abstract Lc/c/a/f/cb;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemProfileCreditBinding.java"


# instance fields
.field public final A:Landroidx/appcompat/widget/AppCompatTextView;

.field public final B:Lcom/google/android/material/button/MaterialButton;

.field public final C:Lcom/google/android/material/button/MaterialButton;

.field public final D:Landroidx/appcompat/widget/AppCompatTextView;

.field public E:Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;

.field public F:Lc/c/a/n/c/d/m;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatTextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/cb;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 3
    iput-object p5, p0, Lc/c/a/f/cb;->B:Lcom/google/android/material/button/MaterialButton;

    .line 4
    iput-object p6, p0, Lc/c/a/f/cb;->C:Lcom/google/android/material/button/MaterialButton;

    .line 5
    iput-object p7, p0, Lc/c/a/f/cb;->D:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/cb;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/cb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/cb;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/cb;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00d0

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/cb;

    return-object p0
.end method
