.class public final Lcom/farsitel/bazaar/app/notification/NotificationManager$DEFAULT_PENDING_INTENT$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationManager.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/b/f/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/farsitel/bazaar/app/notification/NotificationManager$DEFAULT_PENDING_INTENT$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/app/notification/NotificationManager$DEFAULT_PENDING_INTENT$1;

    invoke-direct {v0}, Lcom/farsitel/bazaar/app/notification/NotificationManager$DEFAULT_PENDING_INTENT$1;-><init>()V

    sput-object v0, Lcom/farsitel/bazaar/app/notification/NotificationManager$DEFAULT_PENDING_INTENT$1;->a:Lcom/farsitel/bazaar/app/notification/NotificationManager$DEFAULT_PENDING_INTENT$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/app/PendingIntent;
    .locals 4

    .line 2
    sget-object v0, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    invoke-static {v0}, Lc/c/a/b/f/h;->a(Lc/c/a/b/f/h;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "bazaar://home"

    .line 3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Uri.parse(this)"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 4
    invoke-static {v0, v1, v2, v3, v2}, Lc/c/a/b/f;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/notification/NotificationManager$DEFAULT_PENDING_INTENT$1;->invoke()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
