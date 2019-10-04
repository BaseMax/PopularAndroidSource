.class public final Lcab/snapp/passenger/units/setting/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/units/setting/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/b/a;",
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
            "Lcab/snapp/passenger/c/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/b/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcab/snapp/passenger/units/setting/b;->a:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcab/snapp/passenger/units/setting/b;->b:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcab/snapp/passenger/units/setting/b;->c:Ljavax/inject/Provider;

    .line 28
    iput-object p4, p0, Lcab/snapp/passenger/units/setting/b;->d:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/b/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/units/setting/a;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcab/snapp/passenger/units/setting/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcab/snapp/passenger/units/setting/b;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectReportManagerHelper(Lcab/snapp/passenger/units/setting/a;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcab/snapp/passenger/units/setting/a;->d:Lcab/snapp/passenger/f/b/b/c;

    return-void
.end method

.method public static injectSharedPreferencesManager(Lcab/snapp/passenger/units/setting/a;Lcab/snapp/b/a;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcab/snapp/passenger/units/setting/a;->b:Lcab/snapp/b/a;

    return-void
.end method

.method public static injectSnappConfigDataManager(Lcab/snapp/passenger/units/setting/a;Lcab/snapp/passenger/c/b;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcab/snapp/passenger/units/setting/a;->a:Lcab/snapp/passenger/c/b;

    return-void
.end method

.method public static injectSnappDataLayer(Lcab/snapp/passenger/units/setting/a;Lcab/snapp/passenger/data_access_layer/a/d;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcab/snapp/passenger/units/setting/a;->c:Lcab/snapp/passenger/data_access_layer/a/d;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/units/setting/a;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/b;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/setting/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/setting/a;Lcab/snapp/passenger/c/b;)V

    .line 46
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/b;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/b/a;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/setting/b;->injectSharedPreferencesManager(Lcab/snapp/passenger/units/setting/a;Lcab/snapp/b/a;)V

    .line 47
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/b;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/setting/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/setting/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 48
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/b;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/setting/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/setting/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcab/snapp/passenger/units/setting/a;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/b;->injectMembers(Lcab/snapp/passenger/units/setting/a;)V

    return-void
.end method
