.class public final Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$fullScreenClick$1;
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

    iput-object p1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$fullScreenClick$1;->this$0:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$fullScreenClick$1;->a(Landroid/view/View;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$fullScreenClick$1;->this$0:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    invoke-virtual {p1}, Lb/b/a/m;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "resources"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$fullScreenClick$1;->this$0:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$fullScreenClick$1;->this$0:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget-object v0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->EXIT_FULL_SCREEN:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    invoke-static {p1, v0, v2, v1, v2}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;Ljava/util/Map;ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$fullScreenClick$1;->this$0:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 6
    iget-object p1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$fullScreenClick$1;->this$0:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget-object v0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->FULL_SCREEN:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    invoke-static {p1, v0, v2, v1, v2}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;Ljava/util/Map;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
