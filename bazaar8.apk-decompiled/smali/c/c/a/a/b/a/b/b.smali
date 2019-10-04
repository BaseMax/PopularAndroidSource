.class public final Lc/c/a/a/b/a/b/b;
.super Ljava/lang/Object;
.source "ActionLogNotificationManager.kt"


# static fields
.field public static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Landroid/app/NotificationManager;

.field public static final c:Lc/c/a/a/b/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/a/b/a/b/b;

    invoke-direct {v0}, Lc/c/a/a/b/a/b/b;-><init>()V

    sput-object v0, Lc/c/a/a/b/a/b/b;->c:Lc/c/a/a/b/a/b/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lc/c/a/a/b/a/b/b;->a:Ljava/lang/ref/WeakReference;

    .line 2
    sput-object p2, Lc/c/a/a/b/a/b/b;->b:Landroid/app/NotificationManager;

    return-void
.end method

.method public final a(Lc/c/a/a/b/a/a/a/a;)V
    .locals 1

    const-string v0, "actionLog"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lc/c/a/a/b/a/b/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const-string p1, "applicationContext"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
