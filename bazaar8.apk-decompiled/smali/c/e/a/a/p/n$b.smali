.class public final Lc/e/a/a/p/n$b;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/p/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/a/p/n;


# direct methods
.method public constructor <init>(Lc/e/a/a/p/n;Landroid/media/MediaCodec;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/e/a/a/p/n$b;->a:Lc/e/a/a/p/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/a/p/n;Landroid/media/MediaCodec;Lc/e/a/a/p/m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/e/a/a/p/n$b;-><init>(Lc/e/a/a/p/n;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/e/a/a/p/n$b;->a:Lc/e/a/a/p/n;

    iget-object p4, p1, Lc/e/a/a/p/n;->Wa:Lc/e/a/a/p/n$b;

    if-eq p0, p4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p2, p3}, Lc/e/a/a/p/n;->i(J)V

    return-void
.end method
