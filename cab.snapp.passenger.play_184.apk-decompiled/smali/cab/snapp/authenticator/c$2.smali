.class final Lcab/snapp/authenticator/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/authenticator/c;->removeAccount(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcab/snapp/authenticator/c;


# direct methods
.method constructor <init>(Lcab/snapp/authenticator/c;Landroid/content/Context;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcab/snapp/authenticator/c$2;->b:Lcab/snapp/authenticator/c;

    iput-object p2, p0, Lcab/snapp/authenticator/c$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 596
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 598
    iget-object p1, p0, Lcab/snapp/authenticator/c$2;->b:Lcab/snapp/authenticator/c;

    iget-object v0, p0, Lcab/snapp/authenticator/c$2;->a:Landroid/content/Context;

    .line 1033
    invoke-virtual {p1, v0}, Lcab/snapp/authenticator/c;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
