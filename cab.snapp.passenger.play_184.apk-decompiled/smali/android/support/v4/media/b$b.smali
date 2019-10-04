.class final Landroid/support/v4/media/b$b;
.super Landroid/media/browse/MediaBrowser$ItemCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/b$a;",
        ">",
        "Landroid/media/browse/MediaBrowser$ItemCallback;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/support/v4/media/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ItemCallback;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/support/v4/media/b$b;->a:Landroid/support/v4/media/b$a;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Landroid/support/v4/media/b$b;->a:Landroid/support/v4/media/b$a;

    invoke-interface {v0, p1}, Landroid/support/v4/media/b$a;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public final onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V
    .locals 2

    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Landroid/support/v4/media/b$b;->a:Landroid/support/v4/media/b$a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/support/v4/media/b$a;->onItemLoaded(Landroid/os/Parcel;)V

    return-void

    .line 53
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/media/browse/MediaBrowser$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 55
    iget-object p1, p0, Landroid/support/v4/media/b$b;->a:Landroid/support/v4/media/b$a;

    invoke-interface {p1, v0}, Landroid/support/v4/media/b$a;->onItemLoaded(Landroid/os/Parcel;)V

    return-void
.end method
