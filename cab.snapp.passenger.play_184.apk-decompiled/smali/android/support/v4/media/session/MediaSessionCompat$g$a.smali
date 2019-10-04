.class final Landroid/support/v4/media/session/MediaSessionCompat$g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final command:Ljava/lang/String;

.field public final extras:Landroid/os/Bundle;

.field public final stub:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 2983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2984
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$a;->command:Ljava/lang/String;

    .line 2985
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$a;->extras:Landroid/os/Bundle;

    .line 2986
    iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$g$a;->stub:Landroid/os/ResultReceiver;

    return-void
.end method
