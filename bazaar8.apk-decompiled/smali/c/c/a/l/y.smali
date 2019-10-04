.class public final Lc/c/a/l/y;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/player/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/player/CafePlayer;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/player/CafePlayer;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/l/y;->a:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/c/a/l/y;->a:Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/player/CafePlayer;->u()V

    return-void
.end method
