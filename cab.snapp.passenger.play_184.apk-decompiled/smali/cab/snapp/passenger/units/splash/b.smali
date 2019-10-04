.class public final Lcab/snapp/passenger/units/splash/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/units/splash/a;",
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
            "Lcab/snapp/passenger/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/authenticator/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/network/b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/b/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/authenticator/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/network/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/b;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcab/snapp/passenger/units/splash/b;->a:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcab/snapp/passenger/units/splash/b;->b:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcab/snapp/passenger/units/splash/b;->c:Ljavax/inject/Provider;

    .line 44
    iput-object p4, p0, Lcab/snapp/passenger/units/splash/b;->d:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lcab/snapp/passenger/units/splash/b;->e:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lcab/snapp/passenger/units/splash/b;->f:Ljavax/inject/Provider;

    .line 47
    iput-object p7, p0, Lcab/snapp/passenger/units/splash/b;->g:Ljavax/inject/Provider;

    .line 48
    iput-object p8, p0, Lcab/snapp/passenger/units/splash/b;->h:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/b/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/authenticator/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/network/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/b;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/units/splash/a;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v9, Lcab/snapp/passenger/units/splash/b;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcab/snapp/passenger/units/splash/b;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static injectEventManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/b;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcab/snapp/passenger/units/splash/a;->h:Lcab/snapp/b;

    return-void
.end method

.method public static injectNetworkModules(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/data_access_layer/network/b;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcab/snapp/passenger/units/splash/a;->g:Lcab/snapp/passenger/data_access_layer/network/b;

    return-void
.end method

.method public static injectReportManagerHelper(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcab/snapp/passenger/units/splash/a;->e:Lcab/snapp/passenger/f/b/b/c;

    return-void
.end method

.method public static injectSharedPreferencesManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/b/a;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcab/snapp/passenger/units/splash/a;->a:Lcab/snapp/b/a;

    return-void
.end method

.method public static injectSnappAccountManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/authenticator/c;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcab/snapp/passenger/units/splash/a;->f:Lcab/snapp/authenticator/c;

    return-void
.end method

.method public static injectSnappConfigDataManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/c/b;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcab/snapp/passenger/units/splash/a;->b:Lcab/snapp/passenger/c/b;

    return-void
.end method

.method public static injectSnappGroupDataManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/c/d;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcab/snapp/passenger/units/splash/a;->d:Lcab/snapp/passenger/c/d;

    return-void
.end method

.method public static injectSnappRideDataManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/c/g;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcab/snapp/passenger/units/splash/a;->c:Lcab/snapp/passenger/c/g;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/units/splash/a;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/b;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/b/a;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/splash/b;->injectSharedPreferencesManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/b/a;)V

    .line 74
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/b;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/splash/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/c/b;)V

    .line 75
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/b;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/splash/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/c/g;)V

    .line 76
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/b;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/d;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/splash/b;->injectSnappGroupDataManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/c/d;)V

    .line 77
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/b;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/splash/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/f/b/b/c;)V

    .line 78
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/b;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/authenticator/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/splash/b;->injectSnappAccountManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/authenticator/c;)V

    .line 79
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/b;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/splash/b;->injectNetworkModules(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/data_access_layer/network/b;)V

    .line 80
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/b;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/b;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/splash/b;->injectEventManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/b;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcab/snapp/passenger/units/splash/a;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/splash/b;->injectMembers(Lcab/snapp/passenger/units/splash/a;)V

    return-void
.end method
