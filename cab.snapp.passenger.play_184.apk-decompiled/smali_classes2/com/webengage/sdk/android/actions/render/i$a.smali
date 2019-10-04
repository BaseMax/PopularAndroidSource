.class public final Lcom/webengage/sdk/android/actions/render/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/actions/render/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

.field private final c:Lcom/webengage/sdk/android/actions/render/CallToAction;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Bundle;

.field private g:Landroid/os/Bundle;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;Lcom/webengage/sdk/android/actions/render/CallToAction;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->f:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->g:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->h:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->j:Z

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/i$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/render/i$a;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    iput-object p3, p0, Lcom/webengage/sdk/android/actions/render/i$a;->c:Lcom/webengage/sdk/android/actions/render/CallToAction;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->f:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->g:Landroid/os/Bundle;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/i$a;->h:Z

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/i$a;->i:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/i$a;->j:Z

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/i$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/render/i$a;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->c:Lcom/webengage/sdk/android/actions/render/CallToAction;

    iput-object p3, p0, Lcom/webengage/sdk/android/actions/render/i$a;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/webengage/sdk/android/actions/render/i$a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/webengage/sdk/android/actions/render/i$a;)Lcom/webengage/sdk/android/actions/render/PushNotificationData;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    return-object p0
.end method

.method static synthetic c(Lcom/webengage/sdk/android/actions/render/i$a;)Lcom/webengage/sdk/android/actions/render/CallToAction;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->c:Lcom/webengage/sdk/android/actions/render/CallToAction;

    return-object p0
.end method

.method static synthetic d(Lcom/webengage/sdk/android/actions/render/i$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/webengage/sdk/android/actions/render/i$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/webengage/sdk/android/actions/render/i$a;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->f:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic g(Lcom/webengage/sdk/android/actions/render/i$a;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->g:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic h(Lcom/webengage/sdk/android/actions/render/i$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->h:Z

    return p0
.end method

.method static synthetic i(Lcom/webengage/sdk/android/actions/render/i$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->i:Z

    return p0
.end method

.method static synthetic j(Lcom/webengage/sdk/android/actions/render/i$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/actions/render/i$a;->j:Z

    return p0
.end method


# virtual methods
.method public final a()Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Lcom/webengage/sdk/android/actions/render/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/webengage/sdk/android/actions/render/i;-><init>(Lcom/webengage/sdk/android/actions/render/i$a;Lcom/webengage/sdk/android/actions/render/i$1;)V

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/render/i;->a(Lcom/webengage/sdk/android/actions/render/i;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)Lcom/webengage/sdk/android/actions/render/i$a;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/i$a;->f:Landroid/os/Bundle;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/webengage/sdk/android/actions/render/i$a;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/i$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Z)Lcom/webengage/sdk/android/actions/render/i$a;
    .locals 0

    iput-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/i$a;->h:Z

    return-object p0
.end method

.method public final b(Landroid/os/Bundle;)Lcom/webengage/sdk/android/actions/render/i$a;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/i$a;->g:Landroid/os/Bundle;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/webengage/sdk/android/actions/render/i$a;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/i$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Z)Lcom/webengage/sdk/android/actions/render/i$a;
    .locals 0

    iput-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/i$a;->i:Z

    return-object p0
.end method

.method public final c(Z)Lcom/webengage/sdk/android/actions/render/i$a;
    .locals 0

    iput-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/i$a;->j:Z

    return-object p0
.end method
