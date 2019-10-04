.class public final Lcab/snapp/passenger/units/ride_rating/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/units/ride_rating/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/o;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/o;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_rating/b;->a:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcab/snapp/passenger/units/ride_rating/b;->b:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcab/snapp/passenger/units/ride_rating/b;->c:Ljavax/inject/Provider;

    .line 29
    iput-object p4, p0, Lcab/snapp/passenger/units/ride_rating/b;->d:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/o;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/units/ride_rating/a;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcab/snapp/passenger/units/ride_rating/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcab/snapp/passenger/units/ride_rating/b;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectReportManagerHelper(Lcab/snapp/passenger/units/ride_rating/a;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_rating/a;->g:Lcab/snapp/passenger/f/b/b/c;

    return-void
.end method

.method public static injectShowcaseHelper(Lcab/snapp/passenger/units/ride_rating/a;Lcab/snapp/passenger/f/o;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_rating/a;->d:Lcab/snapp/passenger/f/o;

    return-void
.end method

.method public static injectSnappDataLayer(Lcab/snapp/passenger/units/ride_rating/a;Lcab/snapp/passenger/data_access_layer/a/d;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_rating/a;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    return-void
.end method

.method public static injectSnappRideDataManager(Lcab/snapp/passenger/units/ride_rating/a;Lcab/snapp/passenger/c/g;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_rating/a;->e:Lcab/snapp/passenger/c/g;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/units/ride_rating/a;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/b;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_rating/b;->injectShowcaseHelper(Lcab/snapp/passenger/units/ride_rating/a;Lcab/snapp/passenger/f/o;)V

    .line 47
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/b;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_rating/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/ride_rating/a;Lcab/snapp/passenger/c/g;)V

    .line 48
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/b;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_rating/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/ride_rating/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 49
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/b;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_rating/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/ride_rating/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcab/snapp/passenger/units/ride_rating/a;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/ride_rating/b;->injectMembers(Lcab/snapp/passenger/units/ride_rating/a;)V

    return-void
.end method
