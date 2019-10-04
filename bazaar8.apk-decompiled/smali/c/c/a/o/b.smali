.class public final Lc/c/a/o/b;
.super Ljava/lang/Object;
.source "TabLayoutSelectedListener.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/o/c;-><init>(Landroid/content/Context;Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager/widget/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/o/c;


# direct methods
.method public constructor <init>(Lc/c/a/o/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/o/b;->a:Lc/c/a/o/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IFI)V
    .locals 0

    int-to-float p1, p1

    add-float/2addr p1, p2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    iget-object p2, p0, Lc/c/a/o/b;->a:Lc/c/a/o/c;

    invoke-virtual {p2}, Lc/c/a/o/c;->a()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/material/tabs/TabLayout;->c(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object p1

    invoke-static {p2, p1}, Lc/c/a/o/c;->a(Lc/c/a/o/c;Lcom/google/android/material/tabs/TabLayout$f;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
