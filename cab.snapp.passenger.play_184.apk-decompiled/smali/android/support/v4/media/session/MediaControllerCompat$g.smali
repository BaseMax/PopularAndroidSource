.class public final Landroid/support/v4/media/session/MediaControllerCompat$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final PLAYBACK_TYPE_LOCAL:I = 0x1

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x2


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    .line 1363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1364
    iput p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$g;->a:I

    .line 1365
    iput p2, p0, Landroid/support/v4/media/session/MediaControllerCompat$g;->b:I

    .line 1366
    iput p3, p0, Landroid/support/v4/media/session/MediaControllerCompat$g;->c:I

    .line 1367
    iput p4, p0, Landroid/support/v4/media/session/MediaControllerCompat$g;->d:I

    .line 1368
    iput p5, p0, Landroid/support/v4/media/session/MediaControllerCompat$g;->e:I

    return-void
.end method


# virtual methods
.method public final getAudioStream()I
    .locals 1

    .line 1393
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$g;->b:I

    return v0
.end method

.method public final getCurrentVolume()I
    .locals 1

    .line 1426
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$g;->e:I

    return v0
.end method

.method public final getMaxVolume()I
    .locals 1

    .line 1417
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$g;->d:I

    return v0
.end method

.method public final getPlaybackType()I
    .locals 1

    .line 1381
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$g;->a:I

    return v0
.end method

.method public final getVolumeControl()I
    .locals 1

    .line 1408
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$g;->c:I

    return v0
.end method
