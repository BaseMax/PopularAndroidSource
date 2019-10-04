.class public Lir/cafebazaar/inline/ux/audio/MediaPlayerService$b;
.super Landroid/os/Binder;
.source "MediaPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ux/audio/MediaPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService$b;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lir/cafebazaar/inline/ux/audio/MediaPlayerService;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService$b;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    return-object v0
.end method
