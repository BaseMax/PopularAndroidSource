.class public final Lcom/farsitel/bazaar/app/notification/NotificationManager$context$2;
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
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/farsitel/bazaar/app/notification/NotificationManager$context$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/app/notification/NotificationManager$context$2;

    invoke-direct {v0}, Lcom/farsitel/bazaar/app/notification/NotificationManager$context$2;-><init>()V

    sput-object v0, Lcom/farsitel/bazaar/app/notification/NotificationManager$context$2;->a:Lcom/farsitel/bazaar/app/notification/NotificationManager$context$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/Context;
    .locals 1

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/app/BazaarApp;->i:Lcom/farsitel/bazaar/app/BazaarApp$a;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/app/BazaarApp$a;->a()Lcom/farsitel/bazaar/app/BazaarApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/app/notification/NotificationManager$context$2;->invoke()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
