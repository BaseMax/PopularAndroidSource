.class public final Lcab/snapp/passenger/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/BaseApplication;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/network/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/b/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/network/b;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcab/snapp/passenger/b;->a:Ljavax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcab/snapp/passenger/b;->b:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/b/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/network/b;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/BaseApplication;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcab/snapp/passenger/b;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/b;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectNetworkModules(Lcab/snapp/passenger/BaseApplication;Lcab/snapp/passenger/data_access_layer/network/b;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcab/snapp/passenger/BaseApplication;->b:Lcab/snapp/passenger/data_access_layer/network/b;

    return-void
.end method

.method public static injectSharedPreferencesManager(Lcab/snapp/passenger/BaseApplication;Lcab/snapp/b/a;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcab/snapp/passenger/BaseApplication;->a:Lcab/snapp/b/a;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/BaseApplication;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcab/snapp/passenger/b;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/b/a;

    invoke-static {p1, v0}, Lcab/snapp/passenger/b;->injectSharedPreferencesManager(Lcab/snapp/passenger/BaseApplication;Lcab/snapp/b/a;)V

    .line 31
    iget-object v0, p0, Lcab/snapp/passenger/b;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-static {p1, v0}, Lcab/snapp/passenger/b;->injectNetworkModules(Lcab/snapp/passenger/BaseApplication;Lcab/snapp/passenger/data_access_layer/network/b;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcab/snapp/passenger/BaseApplication;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/b;->injectMembers(Lcab/snapp/passenger/BaseApplication;)V

    return-void
.end method
