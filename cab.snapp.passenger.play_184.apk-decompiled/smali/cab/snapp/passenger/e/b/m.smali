.class public final Lcab/snapp/passenger/e/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/a/b<",
        "Lcab/snapp/authenticator/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcab/snapp/passenger/e/b/d;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/e/b/d;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcab/snapp/passenger/e/b/m;->a:Lcab/snapp/passenger/e/b/d;

    .line 23
    iput-object p2, p0, Lcab/snapp/passenger/e/b/m;->b:Ljavax/inject/Provider;

    .line 24
    iput-object p3, p0, Lcab/snapp/passenger/e/b/m;->c:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/e/b/d;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ldagger/a/b<",
            "Lcab/snapp/authenticator/c;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcab/snapp/passenger/e/b/m;

    invoke-direct {v0, p0, p1, p2}, Lcab/snapp/passenger/e/b/m;-><init>(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final get()Lcab/snapp/authenticator/c;
    .locals 3

    .line 29
    iget-object v0, p0, Lcab/snapp/passenger/e/b/m;->a:Lcab/snapp/passenger/e/b/d;

    iget-object v1, p0, Lcab/snapp/passenger/e/b/m;->b:Ljavax/inject/Provider;

    .line 31
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, p0, Lcab/snapp/passenger/e/b/m;->c:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 30
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/e/b/d;->provideSnappAccountManager(Landroid/app/Application;Ljava/lang/Class;)Lcab/snapp/authenticator/c;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {v0, v1}, Ldagger/a/d;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/authenticator/c;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcab/snapp/passenger/e/b/m;->get()Lcab/snapp/authenticator/c;

    move-result-object v0

    return-object v0
.end method
