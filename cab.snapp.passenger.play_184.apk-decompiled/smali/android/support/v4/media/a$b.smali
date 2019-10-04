.class final Landroid/support/v4/media/a$b;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/a$a;",
        ">",
        "Landroid/media/browse/MediaBrowser$ConnectionCallback;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/support/v4/media/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/support/v4/media/a$b;->a:Landroid/support/v4/media/a$a;

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 1

    .line 103
    iget-object v0, p0, Landroid/support/v4/media/a$b;->a:Landroid/support/v4/media/a$a;

    invoke-interface {v0}, Landroid/support/v4/media/a$a;->onConnected()V

    return-void
.end method

.method public final onConnectionFailed()V
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/support/v4/media/a$b;->a:Landroid/support/v4/media/a$a;

    invoke-interface {v0}, Landroid/support/v4/media/a$a;->onConnectionFailed()V

    return-void
.end method

.method public final onConnectionSuspended()V
    .locals 1

    .line 108
    iget-object v0, p0, Landroid/support/v4/media/a$b;->a:Landroid/support/v4/media/a$a;

    invoke-interface {v0}, Landroid/support/v4/media/a$a;->onConnectionSuspended()V

    return-void
.end method
