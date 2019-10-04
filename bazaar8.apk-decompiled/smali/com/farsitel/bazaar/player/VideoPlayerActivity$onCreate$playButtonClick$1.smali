.class public final Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$playButtonClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoPlayerActivity.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/player/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Landroid/view/View;",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/player/VideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/player/VideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$playButtonClick$1;->this$0:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$playButtonClick$1;->a(Landroid/view/View;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$playButtonClick$1;->this$0:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    invoke-static {p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;)Lcom/farsitel/bazaar/player/CafePlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/player/CafePlayer;->s()V

    return-void
.end method
