.class final Lcom/google/android/material/tabs/TabLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 0

    .line 2862
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$a;->b:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 0

    .line 2869
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$a;->b:Lcom/google/android/material/tabs/TabLayout;

    iget-object p2, p2, Lcom/google/android/material/tabs/TabLayout;->v:Landroidx/viewpager/widget/ViewPager;

    if-ne p2, p1, :cond_0

    .line 2870
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$a;->b:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean p2, p0, Lcom/google/android/material/tabs/TabLayout$a;->a:Z

    invoke-virtual {p1, p3, p2}, Lcom/google/android/material/tabs/TabLayout;->a(Landroidx/viewpager/widget/PagerAdapter;Z)V

    :cond_0
    return-void
.end method
