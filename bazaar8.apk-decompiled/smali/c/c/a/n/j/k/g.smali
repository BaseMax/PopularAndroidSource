.class public final Lc/c/a/n/j/k/g;
.super Ljava/lang/Object;
.source "VideoDetailFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->a(Lcom/farsitel/bazaar/core/model/Resource;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/j/k/g;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/k/g;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;

    iget-object v0, v0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->e(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)Lc/c/a/n/j/k/s;

    move-result-object v0

    const-string v1, "isPurchased"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2, v1}, Lc/c/a/n/j/k/s;->a(Lc/c/a/n/j/k/s;Ljava/util/List;ZILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lc/c/a/n/j/k/g;->a:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;

    iget-object p1, p1, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;->g(Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailFragment;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/k/g;->a(Ljava/lang/Boolean;)V

    return-void
.end method
