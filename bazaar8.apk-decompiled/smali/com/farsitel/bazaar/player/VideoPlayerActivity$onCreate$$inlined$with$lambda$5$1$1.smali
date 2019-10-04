.class public final Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoPlayerActivity.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Ljava/lang/Integer;",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1$1;->this$0:Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1$1;->a(I)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1$1;->this$0:Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;

    iget-object v0, v0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;->this$0:Lc/c/a/l/v;

    iget-object v0, v0, Lc/c/a/l/v;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v1, "behavior"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c(I)V

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1$1;->this$0:Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;

    iget-object v0, v0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;->this$0:Lc/c/a/l/v;

    iget-object v0, v0, Lc/c/a/l/v;->a:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/player/CafePlayer;->d(I)V

    return-void
.end method
