.class final Landroid/support/v4/media/MediaBrowserCompat$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserCompat$d;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$d;)V
    .locals 0

    .line 869
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$d$a;->a:Landroid/support/v4/media/MediaBrowserCompat$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 1

    .line 887
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d$a;->a:Landroid/support/v4/media/MediaBrowserCompat$d;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$d;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public final onItemLoaded(Landroid/os/Parcel;)V
    .locals 1

    if-nez p1, :cond_0

    .line 875
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$d$a;->a:Landroid/support/v4/media/MediaBrowserCompat$d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$d;->onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 877
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 878
    sget-object v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 879
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 880
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 881
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$d$a;->a:Landroid/support/v4/media/MediaBrowserCompat$d;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$d;->onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    return-void
.end method
