.class public final Lcom/farsitel/bazaar/core/widget/customtabs/KeepAliveService;
.super Landroid/app/Service;
.source "KeepAliveService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/core/widget/customtabs/KeepAliveService$a;
    }
.end annotation


# static fields
.field public static final a:Landroid/os/Binder;

.field public static final b:Lcom/farsitel/bazaar/core/widget/customtabs/KeepAliveService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/core/widget/customtabs/KeepAliveService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/core/widget/customtabs/KeepAliveService$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/core/widget/customtabs/KeepAliveService;->b:Lcom/farsitel/bazaar/core/widget/customtabs/KeepAliveService$a;

    .line 1
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/farsitel/bazaar/core/widget/customtabs/KeepAliveService;->a:Landroid/os/Binder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/farsitel/bazaar/core/widget/customtabs/KeepAliveService;->a:Landroid/os/Binder;

    return-object p1
.end method
