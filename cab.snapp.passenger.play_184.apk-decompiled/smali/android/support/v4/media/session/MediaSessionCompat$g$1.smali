.class final Landroid/support/v4/media/session/MediaSessionCompat$g$1;
.super Landroidx/media/VolumeProviderCompat$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$g;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$g;)V
    .locals 0

    .line 2025
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$1;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    invoke-direct {p0}, Landroidx/media/VolumeProviderCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVolumeChanged(Landroidx/media/VolumeProviderCompat;)V
    .locals 7

    .line 2028
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$1;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$g;->w:Landroidx/media/VolumeProviderCompat;

    if-eq v0, p1, :cond_0

    return-void

    .line 2031
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$1;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    iget v2, v1, Landroid/support/v4/media/session/MediaSessionCompat$g;->u:I

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$1;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    iget v3, v1, Landroid/support/v4/media/session/MediaSessionCompat$g;->v:I

    .line 2032
    invoke-virtual {p1}, Landroidx/media/VolumeProviderCompat;->getVolumeControl()I

    move-result v4

    invoke-virtual {p1}, Landroidx/media/VolumeProviderCompat;->getMaxVolume()I

    move-result v5

    .line 2033
    invoke-virtual {p1}, Landroidx/media/VolumeProviderCompat;->getCurrentVolume()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 2034
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$1;->a:Landroid/support/v4/media/session/MediaSessionCompat$g;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$g;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    return-void
.end method
