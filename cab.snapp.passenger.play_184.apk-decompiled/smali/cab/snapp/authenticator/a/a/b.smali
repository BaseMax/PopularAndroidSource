.class public final Lcab/snapp/authenticator/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/authenticator/a/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/authenticator/a/a/b$a;
    }
.end annotation


# instance fields
.field private a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/accounts/AccountManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcab/snapp/authenticator/a/a/b$a;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    iget-object p1, p1, Lcab/snapp/authenticator/a/a/b$a;->a:Lcab/snapp/authenticator/a/b/a;

    .line 1026
    invoke-static {p1}, Lcab/snapp/authenticator/a/b/b;->create(Lcab/snapp/authenticator/a/b/a;)Ldagger/a/b;

    move-result-object p1

    .line 1025
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/authenticator/a/a/b;->a:Ljavax/inject/Provider;

    return-void
.end method

.method synthetic constructor <init>(Lcab/snapp/authenticator/a/a/b$a;B)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcab/snapp/authenticator/a/a/b;-><init>(Lcab/snapp/authenticator/a/a/b$a;)V

    return-void
.end method

.method public static builder()Lcab/snapp/authenticator/a/a/b$a;
    .locals 2

    .line 19
    new-instance v0, Lcab/snapp/authenticator/a/a/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcab/snapp/authenticator/a/a/b$a;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final provideAccountManager()Landroid/accounts/AccountManager;
    .locals 1

    .line 31
    iget-object v0, p0, Lcab/snapp/authenticator/a/a/b;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    return-object v0
.end method
