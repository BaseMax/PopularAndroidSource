.class public abstract Lc/c/a/f/w;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentScreenshotBinding.java"


# instance fields
.field public final A:Lcom/google/android/material/appbar/AppBarLayout;

.field public final B:Landroidx/appcompat/widget/AppCompatImageView;

.field public final C:Landroidx/appcompat/widget/AppCompatImageView;

.field public final D:Lcom/farsitel/bazaar/widget/RTLImageView;

.field public final E:Landroidx/viewpager/widget/ViewPager;

.field public final F:Landroidx/appcompat/widget/Toolbar;

.field public G:Landroidx/databinding/ObservableField;

.field public H:Landroidx/databinding/ObservableField;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/appbar/AppBarLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/RTLImageView;Landroidx/viewpager/widget/ViewPager;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/w;->A:Lcom/google/android/material/appbar/AppBarLayout;

    .line 3
    iput-object p5, p0, Lc/c/a/f/w;->B:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    iput-object p6, p0, Lc/c/a/f/w;->C:Landroidx/appcompat/widget/AppCompatImageView;

    .line 5
    iput-object p7, p0, Lc/c/a/f/w;->D:Lcom/farsitel/bazaar/widget/RTLImageView;

    .line 6
    iput-object p8, p0, Lc/c/a/f/w;->E:Landroidx/viewpager/widget/ViewPager;

    .line 7
    iput-object p9, p0, Lc/c/a/f/w;->F:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/w;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/w;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/w;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/w;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0066

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/w;

    return-object p0
.end method
