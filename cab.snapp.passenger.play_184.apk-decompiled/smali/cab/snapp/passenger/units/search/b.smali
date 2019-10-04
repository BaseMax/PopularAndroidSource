.class public final Lcab/snapp/passenger/units/search/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/units/search/a;",
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
            "Lcab/snapp/passenger/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcab/snapp/passenger/c/h;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcab/snapp/passenger/units/search/b;->a:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcab/snapp/passenger/units/search/b;->b:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcab/snapp/passenger/units/search/b;->c:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcab/snapp/passenger/units/search/b;->d:Ljavax/inject/Provider;

    .line 37
    iput-object p5, p0, Lcab/snapp/passenger/units/search/b;->e:Ljavax/inject/Provider;

    .line 38
    iput-object p6, p0, Lcab/snapp/passenger/units/search/b;->f:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 8
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
            "Lcab/snapp/passenger/c/h;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/units/search/a;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v7, Lcab/snapp/passenger/units/search/b;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcab/snapp/passenger/units/search/b;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static injectReportManagerHelper(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcab/snapp/passenger/units/search/a;->g:Lcab/snapp/passenger/f/b/b/c;

    return-void
.end method

.method public static injectShowcaseHelper(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/f/o;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcab/snapp/passenger/units/search/a;->b:Lcab/snapp/passenger/f/o;

    return-void
.end method

.method public static injectSnappDataLayer(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/data_access_layer/a/d;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcab/snapp/passenger/units/search/a;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    return-void
.end method

.method public static injectSnappLocationDataManager(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/c/e;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcab/snapp/passenger/units/search/a;->e:Lcab/snapp/passenger/c/e;

    return-void
.end method

.method public static injectSnappRideDataManager(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/c/g;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcab/snapp/passenger/units/search/a;->c:Lcab/snapp/passenger/c/g;

    return-void
.end method

.method public static injectSnappSearchDataManager(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/c/h;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcab/snapp/passenger/units/search/a;->d:Lcab/snapp/passenger/c/h;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/units/search/a;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcab/snapp/passenger/units/search/b;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/search/b;->injectShowcaseHelper(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/f/o;)V

    .line 60
    iget-object v0, p0, Lcab/snapp/passenger/units/search/b;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/search/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/c/g;)V

    .line 61
    iget-object v0, p0, Lcab/snapp/passenger/units/search/b;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/h;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/search/b;->injectSnappSearchDataManager(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/c/h;)V

    .line 62
    iget-object v0, p0, Lcab/snapp/passenger/units/search/b;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/e;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/search/b;->injectSnappLocationDataManager(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/c/e;)V

    .line 63
    iget-object v0, p0, Lcab/snapp/passenger/units/search/b;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/search/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 64
    iget-object v0, p0, Lcab/snapp/passenger/units/search/b;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/search/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcab/snapp/passenger/units/search/a;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/search/b;->injectMembers(Lcab/snapp/passenger/units/search/a;)V

    return-void
.end method
