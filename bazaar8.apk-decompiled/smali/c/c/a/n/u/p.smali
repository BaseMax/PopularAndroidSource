.class public final Lc/c/a/n/u/p;
.super Ljava/lang/Object;
.source "ReviewsViewModel.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/reviews/ReviewsViewModel$makeData$1;->d(Ljava/lang/Object;)Ljava/lang/Object;
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
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/reviews/ReviewsViewModel$makeData$1;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/reviews/ReviewsViewModel$makeData$1;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/u/p;->a:Lcom/farsitel/bazaar/ui/reviews/ReviewsViewModel$makeData$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/n/u/p;->a:Lcom/farsitel/bazaar/ui/reviews/ReviewsViewModel$makeData$1;

    iget-object v0, v0, Lcom/farsitel/bazaar/ui/reviews/ReviewsViewModel$makeData$1;->this$0:Lc/c/a/n/u/q;

    const-string v1, "it"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lc/c/a/n/u/q;->a(Lc/c/a/n/u/q;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lc/c/a/n/u/p;->a(Ljava/lang/Integer;)V

    return-void
.end method
