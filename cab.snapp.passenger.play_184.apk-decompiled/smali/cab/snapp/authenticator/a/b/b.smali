.class public final Lcab/snapp/authenticator/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/a/b<",
        "Landroid/accounts/AccountManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcab/snapp/authenticator/a/b/a;


# direct methods
.method public constructor <init>(Lcab/snapp/authenticator/a/b/a;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcab/snapp/authenticator/a/b/b;->a:Lcab/snapp/authenticator/a/b/a;

    return-void
.end method

.method public static create(Lcab/snapp/authenticator/a/b/a;)Ldagger/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/authenticator/a/b/a;",
            ")",
            "Ldagger/a/b<",
            "Landroid/accounts/AccountManager;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcab/snapp/authenticator/a/b/b;

    invoke-direct {v0, p0}, Lcab/snapp/authenticator/a/b/b;-><init>(Lcab/snapp/authenticator/a/b/a;)V

    return-object v0
.end method


# virtual methods
.method public final get()Landroid/accounts/AccountManager;
    .locals 2

    .line 17
    iget-object v0, p0, Lcab/snapp/authenticator/a/b/b;->a:Lcab/snapp/authenticator/a/b/a;

    .line 18
    invoke-virtual {v0}, Lcab/snapp/authenticator/a/b/a;->provideAccountManager()Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 17
    invoke-static {v0, v1}, Ldagger/a/d;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcab/snapp/authenticator/a/b/b;->get()Landroid/accounts/AccountManager;

    move-result-object v0

    return-object v0
.end method
