.class public final Lc/c/a/a/b/a/b/a;
.super Ljava/lang/Object;
.source "ActionLogNotificationChannel.kt"


# static fields
.field public static final a:Lc/c/a/a/b/a/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/a/b/a/b/a;

    invoke-direct {v0}, Lc/c/a/a/b/a/b/a;-><init>()V

    sput-object v0, Lc/c/a/a/b/a/b/a;->a:Lc/c/a/a/b/a/b/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/NotificationManager;)V
    .locals 2

    const-string v0, "notificationManager"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/a/b/a/b/a;->b(Landroid/app/NotificationManager;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/app/NotificationManager;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "action_logs"

    const-string v2, "Action Logs"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 3
    invoke-static {v0}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    return-void
.end method
