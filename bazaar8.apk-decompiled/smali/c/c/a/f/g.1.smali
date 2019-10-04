.class public abstract Lc/c/a/f/g;
.super Landroidx/databinding/ViewDataBinding;
.source "DialogForceUpdateBinding.java"


# instance fields
.field public final A:Landroidx/constraintlayout/widget/Group;

.field public final B:Landroid/widget/ProgressBar;

.field public final C:Landroid/widget/TextView;

.field public final D:Landroidx/appcompat/widget/AppCompatImageView;

.field public final E:Landroidx/appcompat/widget/AppCompatTextView;

.field public final F:Lcom/google/android/material/button/MaterialButton;

.field public final G:Landroidx/appcompat/widget/AppCompatImageView;

.field public final H:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Group;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/google/android/material/button/MaterialButton;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lc/c/a/f/g;->A:Landroidx/constraintlayout/widget/Group;

    .line 3
    iput-object p5, p0, Lc/c/a/f/g;->B:Landroid/widget/ProgressBar;

    .line 4
    iput-object p6, p0, Lc/c/a/f/g;->C:Landroid/widget/TextView;

    .line 5
    iput-object p7, p0, Lc/c/a/f/g;->D:Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    iput-object p8, p0, Lc/c/a/f/g;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 7
    iput-object p9, p0, Lc/c/a/f/g;->F:Lcom/google/android/material/button/MaterialButton;

    .line 8
    iput-object p10, p0, Lc/c/a/f/g;->G:Landroidx/appcompat/widget/AppCompatImageView;

    .line 9
    iput-object p11, p0, Lc/c/a/f/g;->H:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/g;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/c/a/f/g;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lc/c/a/f/g;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d003a

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/g;

    return-object p0
.end method
