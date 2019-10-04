.class public final Lcom/farsitel/bazaar/player/CafePlayer$defaultDataSourceFactory$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CafePlayer.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/player/CafePlayer;-><init>(Landroid/content/Context;Lc/c/a/l/f;Lj/I;Lc/c/a/l/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Lc/e/a/a/n/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/player/CafePlayer;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/player/CafePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/player/CafePlayer$defaultDataSourceFactory$2;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lc/e/a/a/n/q;
    .locals 4

    .line 2
    new-instance v0, Lc/e/a/a/n/q;

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/player/CafePlayer$defaultDataSourceFactory$2;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {v1}, Lcom/farsitel/bazaar/player/CafePlayer;->c(Lcom/farsitel/bazaar/player/CafePlayer;)Landroid/content/Context;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/farsitel/bazaar/player/CafePlayer$defaultDataSourceFactory$2;->this$0:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {v2}, Lcom/farsitel/bazaar/player/CafePlayer;->c(Lcom/farsitel/bazaar/player/CafePlayer;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "CafePlayer"

    invoke-static {v2, v3}, Lc/e/a/a/o/I;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-direct {v0, v1, v2}, Lc/e/a/a/n/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/player/CafePlayer$defaultDataSourceFactory$2;->invoke()Lc/e/a/a/n/q;

    move-result-object v0

    return-object v0
.end method
