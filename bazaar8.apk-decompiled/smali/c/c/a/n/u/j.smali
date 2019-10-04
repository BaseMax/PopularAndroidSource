.class public final Lc/c/a/n/u/j;
.super Ljava/lang/Object;
.source "ReviewsFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->jb()Lc/c/a/n/u/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/u/j;->a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lh/h;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lc/c/a/n/u/j;->a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->a(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)Lc/c/a/d/d/c;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/n/u/j;->a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;

    const v1, 0x7f1001a5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lh/h;

    invoke-virtual {p0, p1}, Lc/c/a/n/u/j;->a(Lh/h;)V

    return-void
.end method
