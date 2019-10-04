.class public final Lcab/snapp/passenger/units/payment/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/units/payment/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcab/snapp/passenger/units/payment/b;->a:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcab/snapp/passenger/units/payment/b;->b:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcab/snapp/passenger/units/payment/b;->c:Ljavax/inject/Provider;

    .line 32
    iput-object p4, p0, Lcab/snapp/passenger/units/payment/b;->d:Ljavax/inject/Provider;

    .line 33
    iput-object p5, p0, Lcab/snapp/passenger/units/payment/b;->e:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/units/payment/a;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v6, Lcab/snapp/passenger/units/payment/b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcab/snapp/passenger/units/payment/b;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectConfigDataManager(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/c/b;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcab/snapp/passenger/units/payment/a;->g:Lcab/snapp/passenger/c/b;

    return-void
.end method

.method public static injectReportManagerHelper(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcab/snapp/passenger/units/payment/a;->e:Lcab/snapp/passenger/f/b/b/c;

    return-void
.end method

.method public static injectSnappDataLayer(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/data_access_layer/a/d;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcab/snapp/passenger/units/payment/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    return-void
.end method

.method public static injectSnappProfileDataManager(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/c/f;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcab/snapp/passenger/units/payment/a;->c:Lcab/snapp/passenger/c/f;

    return-void
.end method

.method public static injectSnappRideDataManager(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/c/g;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcab/snapp/passenger/units/payment/a;->f:Lcab/snapp/passenger/c/g;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/units/payment/a;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/b;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/f;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/payment/b;->injectSnappProfileDataManager(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/c/f;)V

    .line 53
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/b;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/payment/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 54
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/b;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/payment/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/f/b/b/c;)V

    .line 55
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/b;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/payment/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/c/g;)V

    .line 56
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/b;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/payment/b;->injectConfigDataManager(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/c/b;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/payment/b;->injectMembers(Lcab/snapp/passenger/units/payment/a;)V

    return-void
.end method
