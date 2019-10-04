.class final Lcab/snapp/authenticator/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/authenticator/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcab/snapp/authenticator/c;


# direct methods
.method constructor <init>(Lcab/snapp/authenticator/c;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcab/snapp/authenticator/c$1;->c:Lcab/snapp/authenticator/c;

    iput-object p2, p0, Lcab/snapp/authenticator/c$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcab/snapp/authenticator/c$1;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 527
    :try_start_0
    iget-object v0, p0, Lcab/snapp/authenticator/c$1;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 531
    :cond_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    .line 532
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcab/snapp/authenticator/c$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcab/snapp/authenticator/c$1;->c:Lcab/snapp/authenticator/c;

    .line 1150
    iget-object v1, v1, Lcab/snapp/authenticator/c;->a:Ljava/lang/Class;

    .line 532
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 533
    iget-object v0, p0, Lcab/snapp/authenticator/c$1;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 534
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 535
    iget-object v0, p0, Lcab/snapp/authenticator/c$1;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 539
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
