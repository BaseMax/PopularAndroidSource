.class public Lf/a/a/g/b/g;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ux/audio/MediaPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/b/g;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/a/a/g/b/g;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-static {p1}, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->a(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)Lf/a/a/g/b/r;

    move-result-object p1

    invoke-virtual {p1}, Lf/a/a/g/b/r;->f()V

    return-void
.end method
