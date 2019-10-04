.class public abstract Lc/c/a/f/q;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentMyBazaarBinding.java"


# instance fields
.field public final A:Landroidx/constraintlayout/widget/Barrier;

.field public final B:Landroid/view/View;

.field public final C:Landroid/view/View;

.field public final D:Lcom/google/android/material/button/MaterialButton;

.field public final E:Lcom/google/android/material/button/MaterialButton;

.field public final F:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

.field public final G:Landroidx/appcompat/widget/AppCompatImageView;

.field public final H:Lcom/google/android/material/tabs/TabLayout;

.field public final I:Landroid/view/View;

.field public final J:Landroidx/appcompat/widget/AppCompatImageView;

.field public final K:Landroidx/appcompat/widget/AppCompatImageView;

.field public final L:Landroidx/appcompat/widget/AppCompatImageView;

.field public final M:Landroidx/viewpager/widget/ViewPager;

.field public N:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/common/model/user/User;",
            ">;"
        }
    .end annotation
.end field

.field public O:Lc/c/a/n/r/p;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Barrier;Landroid/view/View;Landroid/view/View;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lc/c/a/f/q;->A:Landroidx/constraintlayout/widget/Barrier;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lc/c/a/f/q;->B:Landroid/view/View;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lc/c/a/f/q;->C:Landroid/view/View;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lc/c/a/f/q;->D:Lcom/google/android/material/button/MaterialButton;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lc/c/a/f/q;->E:Lcom/google/android/material/button/MaterialButton;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lc/c/a/f/q;->F:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lc/c/a/f/q;->G:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lc/c/a/f/q;->H:Lcom/google/android/material/tabs/TabLayout;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lc/c/a/f/q;->I:Landroid/view/View;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lc/c/a/f/q;->J:Landroidx/appcompat/widget/AppCompatImageView;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lc/c/a/f/q;->K:Landroidx/appcompat/widget/AppCompatImageView;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lc/c/a/f/q;->L:Landroidx/appcompat/widget/AppCompatImageView;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lc/c/a/f/q;->M:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;)Lc/c/a/f/q;
    .locals 1

    .line 1
    invoke-static {}, Lb/l/g;->a()Lb/l/f;

    move-result-object v0

    invoke-static {p0, v0}, Lc/c/a/f/q;->a(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lc/c/a/f/q;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lc/c/a/f/q;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d005c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lc/c/a/f/q;

    return-object p0
.end method


# virtual methods
.method public abstract a(Landroidx/lifecycle/LiveData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/common/model/user/User;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Lc/c/a/n/r/p;)V
.end method
