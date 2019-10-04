.class Landroid/support/v4/media/session/MediaSessionCompat$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$g$c;,
        Landroid/support/v4/media/session/MediaSessionCompat$g$a;,
        Landroid/support/v4/media/session/MediaSessionCompat$g$b;
    }
.end annotation


# instance fields
.field private final A:Landroid/support/v4/media/session/MediaSessionCompat$g$b;

.field private final B:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private C:Landroid/support/v4/media/session/MediaSessionCompat$g$c;

.field private D:Z

.field private E:Z

.field private F:Landroidx/media/MediaSessionManager$RemoteUserInfo;

.field private G:Landroidx/media/VolumeProviderCompat$Callback;

.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Landroid/media/AudioManager;

.field final d:Landroid/media/RemoteControlClient;

.field final e:Ljava/lang/Object;

.field final f:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/support/v4/media/session/a;",
            ">;"
        }
    .end annotation
.end field

.field g:Z

.field h:Z

.field volatile i:Landroid/support/v4/media/session/MediaSessionCompat$a;

.field j:I

.field k:Landroid/support/v4/media/MediaMetadataCompat;

.field l:Landroid/support/v4/media/session/PlaybackStateCompat;

.field m:Landroid/app/PendingIntent;

.field n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/lang/CharSequence;

.field p:I

.field q:Z

.field r:I

.field s:I

.field t:Landroid/os/Bundle;

.field u:I

.field v:I

.field w:Landroidx/media/VolumeProviderCompat;

.field private final x:Landroid/content/Context;

.field private final y:Landroid/content/ComponentName;

.field private final z:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 2

    .line 2039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1995
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->e:Ljava/lang/Object;

    .line 1996
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 2000
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->g:Z

    .line 2001
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->h:Z

    .line 2002
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->D:Z

    .line 2003
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->E:Z

    .line 2024
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$g$1;

    invoke-direct {v1, p0}, Landroid/support/v4/media/session/MediaSessionCompat$g$1;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$g;)V

    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->G:Landroidx/media/VolumeProviderCompat$Callback;

    if-eqz p3, :cond_0

    .line 2044
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->x:Landroid/content/Context;

    .line 2045
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->a:Ljava/lang/String;

    const-string v1, "audio"

    .line 2046
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->c:Landroid/media/AudioManager;

    .line 2047
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->b:Ljava/lang/String;

    .line 2048
    iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->y:Landroid/content/ComponentName;

    .line 2049
    iput-object p4, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->z:Landroid/app/PendingIntent;

    .line 2050
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$g$b;

    invoke-direct {p1, p0}, Landroid/support/v4/media/session/MediaSessionCompat$g$b;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$g;)V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->A:Landroid/support/v4/media/session/MediaSessionCompat$g$b;

    .line 2051
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->A:Landroid/support/v4/media/session/MediaSessionCompat$g$b;

    invoke-direct {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->B:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 2053
    iput v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->p:I

    const/4 p1, 0x1

    .line 2054
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->u:I

    const/4 p1, 0x3

    .line 2055
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->v:I

    .line 2056
    new-instance p1, Landroid/media/RemoteControlClient;

    invoke-direct {p1, p4}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/media/RemoteControlClient;

    return-void

    .line 2041
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MediaButtonReceiver component may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/16 p0, 0x9

    return p0

    :pswitch_3
    const/16 p0, 0x8

    return p0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    const/4 p0, 0x3

    return p0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    :pswitch_8
    const/4 p0, 0x1

    return p0

    :pswitch_9
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a()Z
    .locals 4

    .line 2447
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->h:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2449
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->D:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->j:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2450
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->z:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->y:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat$g;->a(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 2452
    iput-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->D:Z

    goto :goto_0

    .line 2453
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->D:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->j:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 2454
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->z:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->y:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat$g;->b(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 2456
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->D:Z

    .line 2459
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->E:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 2460
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->c:Landroid/media/AudioManager;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 2461
    iput-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->E:Z

    goto :goto_2

    .line 2463
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->E:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->j:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    .line 2468
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 2469
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->c:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 2470
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->E:Z

    goto :goto_1

    .line 2474
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->D:Z

    if-eqz v0, :cond_4

    .line 2475
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->z:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->y:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$g;->b(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 2477
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->D:Z

    .line 2479
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->E:Z

    if-eqz v0, :cond_5

    .line 2483
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 2484
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->c:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 2485
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->E:Z

    :cond_5
    :goto_1
    const/4 v1, 0x0

    :goto_2
    return v1
.end method


# virtual methods
.method a(J)I
    .locals 6

    const-wide/16 v0, 0x1

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v4, 0x2

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    :cond_1
    const-wide/16 v4, 0x4

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    const-wide/16 v4, 0x8

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    :cond_3
    const-wide/16 v4, 0x10

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    const-wide/16 v4, 0x20

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x80

    :cond_5
    const-wide/16 v4, 0x40

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x40

    :cond_6
    const-wide/16 v4, 0x200

    and-long/2addr p1, v4

    cmp-long v1, p1, v2

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x8

    :cond_7
    return v0
.end method

.method a(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 6

    .line 2281
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/media/RemoteControlClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "android.media.metadata.ART"

    .line 2285
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x64

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 2286
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 2289
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2291
    :cond_1
    invoke-virtual {v0, v4, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto :goto_0

    :cond_2
    const-string v2, "android.media.metadata.ALBUM_ART"

    .line 2292
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2294
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 2297
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2299
    :cond_3
    invoke-virtual {v0, v4, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_4
    :goto_0
    const-string v2, "android.media.metadata.ALBUM"

    .line 2301
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2303
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2302
    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_5
    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    .line 2305
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0xd

    .line 2307
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2306
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_6
    const-string v1, "android.media.metadata.ARTIST"

    .line 2309
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x2

    .line 2311
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2310
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_7
    const-string v1, "android.media.metadata.AUTHOR"

    .line 2313
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x3

    .line 2315
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2314
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_8
    const-string v1, "android.media.metadata.COMPILATION"

    .line 2317
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0xf

    .line 2319
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2318
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_9
    const-string v1, "android.media.metadata.COMPOSER"

    .line 2321
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x4

    .line 2323
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2322
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_a
    const-string v1, "android.media.metadata.DATE"

    .line 2325
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x5

    .line 2327
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2326
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_b
    const-string v1, "android.media.metadata.DISC_NUMBER"

    .line 2329
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0xe

    .line 2331
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2330
    invoke-virtual {v0, v2, v3, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_c
    const-string v1, "android.media.metadata.DURATION"

    .line 2333
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x9

    .line 2335
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2334
    invoke-virtual {v0, v2, v3, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_d
    const-string v1, "android.media.metadata.GENRE"

    .line 2337
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x6

    .line 2339
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2338
    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_e
    const-string v1, "android.media.metadata.TITLE"

    .line 2341
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x7

    const-string v2, "android.media.metadata.TITLE"

    .line 2343
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2342
    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_f
    const-string v1, "android.media.metadata.TRACK_NUMBER"

    .line 2345
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "android.media.metadata.TRACK_NUMBER"

    .line 2347
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 2346
    invoke-virtual {v0, v5, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_10
    const-string v1, "android.media.metadata.WRITER"

    .line 2349
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0xb

    const-string v2, "android.media.metadata.WRITER"

    .line 2351
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2350
    invoke-virtual {v0, v1, p1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    :cond_11
    return-object v0
.end method

.method final a(II)V
    .locals 2

    .line 2501
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2502
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->w:Landroidx/media/VolumeProviderCompat;

    if-eqz p2, :cond_1

    .line 2503
    invoke-virtual {p2, p1}, Landroidx/media/VolumeProviderCompat;->onAdjustVolume(I)V

    return-void

    .line 2506
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->c:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->v:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_1
    return-void
.end method

.method final a(IIILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 2

    .line 2077
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2078
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->C:Landroid/support/v4/media/session/MediaSessionCompat$g$c;

    if-eqz v1, :cond_1

    .line 2079
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->C:Landroid/support/v4/media/session/MediaSessionCompat$g$c;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v4/media/session/MediaSessionCompat$g$c;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2080
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "data_calling_pkg"

    const-string p4, "android.media.session.MediaController"

    .line 2081
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "data_calling_pid"

    .line 2082
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "data_calling_uid"

    .line 2083
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p5, :cond_0

    const-string p3, "data_extras"

    .line 2085
    invoke-virtual {p2, p3, p5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2087
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2088
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2090
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method a(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 0

    .line 2492
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->c:Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    return-void
.end method

.method final a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 2

    .line 2521
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2523
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 2525
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2529
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1

    .line 2199
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/media/RemoteControlClient;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat$g;->a(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    return-void
.end method

.method final b(II)V
    .locals 2

    .line 2511
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2512
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->w:Landroidx/media/VolumeProviderCompat;

    if-eqz p2, :cond_1

    .line 2513
    invoke-virtual {p2, p1}, Landroidx/media/VolumeProviderCompat;->onSetVolumeTo(I)V

    return-void

    .line 2516
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->c:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->v:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_1
    return-void
.end method

.method b(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 0

    .line 2497
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->c:Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    return-void
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .locals 2

    .line 2432
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2433
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->F:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2434
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMediaSession()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 2

    .line 2193
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2194
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->l:Landroid/support/v4/media/session/PlaybackStateCompat;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2195
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 2165
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->B:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 2147
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->h:Z

    return v0
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 2157
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->h:Z

    const/4 v0, 0x1

    .line 2158
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->g:Z

    .line 2159
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$g;->a()Z

    .line 4533
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 4535
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 4537
    :try_start_0
    invoke-interface {v0}, Landroid/support/v4/media/session/a;->onSessionDestroyed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4541
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4542
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 3546
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3548
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 3550
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/support/v4/media/session/a;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3554
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public setActive(Z)V
    .locals 1

    .line 2135
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->h:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2138
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->h:Z

    .line 2139
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$g;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2140
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->k:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$g;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 2141
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->l:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$g;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    :cond_1
    return-void
.end method

.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V
    .locals 2

    .line 2061
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->i:Landroid/support/v4/media/session/MediaSessionCompat$a;

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 2064
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 2066
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 2067
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->C:Landroid/support/v4/media/session/MediaSessionCompat$g$c;

    if-eqz v0, :cond_1

    .line 2068
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->C:Landroid/support/v4/media/session/MediaSessionCompat$g$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$g$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2070
    :cond_1
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$g$c;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$g$c;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$g;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->C:Landroid/support/v4/media/session/MediaSessionCompat$g$c;

    .line 2071
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->i:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v0, p0, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;Landroid/os/Handler;)V

    .line 2072
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_2
    return-void
.end method

.method public setCaptioningEnabled(Z)V
    .locals 2

    .line 2402
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->q:Z

    if-eq v0, p1, :cond_1

    .line 2403
    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->q:Z

    .line 4606
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4608
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 4610
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->onCaptioningEnabledChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4614
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_1
    return-void
.end method

.method public setCurrentControllerInfo(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V
    .locals 1

    .line 2439
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2440
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->F:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 2441
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 2426
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->t:Landroid/os/Bundle;

    .line 4642
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4644
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 4646
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->onExtrasChanged(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4650
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public setFlags(I)V
    .locals 1

    .line 2095
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2096
    :try_start_0
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->j:I

    .line 2097
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2098
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$g;->a()Z

    return-void

    :catchall_0
    move-exception p1

    .line 2097
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2264
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$a;

    sget v1, Landroid/support/v4/media/session/MediaSessionCompat;->a:I

    invoke-direct {v0, p1, v1}, Landroid/support/v4/media/MediaMetadataCompat$a;-><init>(Landroid/support/v4/media/MediaMetadataCompat;I)V

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$a;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 2267
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2268
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->k:Landroid/support/v4/media/MediaMetadataCompat;

    .line 2269
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4570
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4572
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 4574
    :try_start_1
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4578
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2271
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->h:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 2276
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 2275
    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$g;->a(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object p1

    .line 2277
    invoke-virtual {p1}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    return-void

    :catchall_0
    move-exception p1

    .line 2269
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    .line 2170
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2171
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->l:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 2172
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4558
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4560
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 4562
    :try_start_1
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4566
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2174
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->h:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 2179
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/media/RemoteControlClient;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 2180
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/media/RemoteControlClient;

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    return-void

    .line 2183
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$g;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 2186
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->d:Landroid/media/RemoteControlClient;

    .line 2187
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$g;->a(J)I

    move-result p1

    .line 2186
    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 2172
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setPlaybackToLocal(I)V
    .locals 6

    .line 2103
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->w:Landroidx/media/VolumeProviderCompat;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2104
    invoke-virtual {v0, v1}, Landroidx/media/VolumeProviderCompat;->setCallback(Landroidx/media/VolumeProviderCompat$Callback;)V

    .line 2106
    :cond_0
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->v:I

    const/4 p1, 0x1

    .line 2107
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->u:I

    .line 2108
    new-instance p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->u:I

    iget v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->v:I

    const/4 v3, 0x2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->c:Landroid/media/AudioManager;

    .line 2110
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->c:Landroid/media/AudioManager;

    iget v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->v:I

    .line 2111
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 2112
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$g;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    return-void
.end method

.method public setPlaybackToRemote(Landroidx/media/VolumeProviderCompat;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 2120
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->w:Landroidx/media/VolumeProviderCompat;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2121
    invoke-virtual {v0, v1}, Landroidx/media/VolumeProviderCompat;->setCallback(Landroidx/media/VolumeProviderCompat$Callback;)V

    :cond_0
    const/4 v0, 0x2

    .line 2123
    iput v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->u:I

    .line 2124
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->w:Landroidx/media/VolumeProviderCompat;

    .line 2125
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->u:I

    iget v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->v:I

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->w:Landroidx/media/VolumeProviderCompat;

    .line 2126
    invoke-virtual {v1}, Landroidx/media/VolumeProviderCompat;->getVolumeControl()I

    move-result v4

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->w:Landroidx/media/VolumeProviderCompat;

    invoke-virtual {v1}, Landroidx/media/VolumeProviderCompat;->getMaxVolume()I

    move-result v5

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->w:Landroidx/media/VolumeProviderCompat;

    .line 2127
    invoke-virtual {v1}, Landroidx/media/VolumeProviderCompat;->getCurrentVolume()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 2128
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$g;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 2130
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->G:Landroidx/media/VolumeProviderCompat$Callback;

    invoke-virtual {p1, v0}, Landroidx/media/VolumeProviderCompat;->setCallback(Landroidx/media/VolumeProviderCompat$Callback;)V

    return-void

    .line 2118
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "volumeProvider may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setQueue(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 2370
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->n:Ljava/util/List;

    .line 4582
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4584
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 4586
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->onQueueChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4590
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 2376
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->o:Ljava/lang/CharSequence;

    .line 4594
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4596
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 4598
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4602
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public setRatingType(I)V
    .locals 0

    .line 2397
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->p:I

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 2410
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->r:I

    if-eq v0, p1, :cond_1

    .line 2411
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->r:I

    .line 4618
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4620
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 4622
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->onRepeatModeChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4626
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_1
    return-void
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 1

    .line 2358
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2359
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->m:Landroid/app/PendingIntent;

    .line 2360
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setShuffleMode(I)V
    .locals 2

    .line 2418
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->s:I

    if-eq v0, p1, :cond_1

    .line 2419
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->s:I

    .line 4630
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4632
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 4634
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->onShuffleModeChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4638
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_1
    return-void
.end method
