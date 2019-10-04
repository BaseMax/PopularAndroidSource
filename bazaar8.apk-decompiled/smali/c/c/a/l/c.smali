.class public final Lc/c/a/l/c;
.super Ljava/util/TimerTask;
.source "CafePlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/player/CafePlayer;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/player/CafePlayer;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/player/CafePlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/l/c;->a:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/l/c;->a:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-static {v0}, Lcom/farsitel/bazaar/player/CafePlayer;->a(Lcom/farsitel/bazaar/player/CafePlayer;)V

    return-void
.end method
