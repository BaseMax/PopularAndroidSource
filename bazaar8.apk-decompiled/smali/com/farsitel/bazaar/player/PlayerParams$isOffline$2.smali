.class public final Lcom/farsitel/bazaar/player/PlayerParams$isOffline$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayerParams.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/l/f;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/l/f;


# direct methods
.method public constructor <init>(Lc/c/a/l/f;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/player/PlayerParams$isOffline$2;->this$0:Lc/c/a/l/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/player/PlayerParams$isOffline$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/player/PlayerParams$isOffline$2;->this$0:Lc/c/a/l/f;

    invoke-virtual {v0}, Lc/c/a/l/f;->d()Lcom/farsitel/bazaar/player/VideoSource;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/player/VideoSource;->DISK:Lcom/farsitel/bazaar/player/VideoSource;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
