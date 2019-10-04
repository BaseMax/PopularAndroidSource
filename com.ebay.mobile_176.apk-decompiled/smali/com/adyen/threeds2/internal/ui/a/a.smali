.class public final Lcom/adyen/threeds2/internal/ui/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adyen/threeds2/ProgressDialog;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adyen/threeds2/internal/ui/a/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-static {v0}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-static {}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    invoke-static {v0}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
