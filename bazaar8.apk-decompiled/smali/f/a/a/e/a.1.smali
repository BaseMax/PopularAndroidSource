.class public Lf/a/a/e/a;
.super Landroid/support/v4/media/session/MediaControllerCompat$a;
.source "CommonPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lf/a/a/e/c;


# direct methods
.method public constructor <init>(Lf/a/a/e/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/a;->d:Lf/a/a/e/c;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lf/a/a/e/a;->d:Lf/a/a/e/c;

    invoke-static {v0}, Lf/a/a/e/c;->a(Lf/a/a/e/c;)Lf/a/a/g/b/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->b()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/a/g/b/a;->a(Ljava/lang/Integer;)V

    .line 5
    iget-object v0, p0, Lf/a/a/e/a;->d:Lf/a/a/e/c;

    invoke-static {v0}, Lf/a/a/e/c;->a(Lf/a/a/e/c;)Lf/a/a/g/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/b/a;->a()Landroid/support/v4/media/session/MediaControllerCompat$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaybackstate changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonPageFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lf/a/a/e/a;->d:Lf/a/a/e/c;

    invoke-static {v0}, Lf/a/a/e/c;->a(Lf/a/a/e/c;)Lf/a/a/g/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/b/a;->a()Landroid/support/v4/media/session/MediaControllerCompat$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    :cond_0
    return-void
.end method
