.class public final Lcab/snapp/passenger/units/webhost/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/units/webhost/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
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
            "Lcab/snapp/passenger/c/d;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/e;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcab/snapp/passenger/units/webhost/b;->a:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcab/snapp/passenger/units/webhost/b;->b:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcab/snapp/passenger/units/webhost/b;->c:Ljavax/inject/Provider;

    .line 28
    iput-object p4, p0, Lcab/snapp/passenger/units/webhost/b;->d:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/e;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/units/webhost/a;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcab/snapp/passenger/units/webhost/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcab/snapp/passenger/units/webhost/b;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectGroupDataManager(Lcab/snapp/passenger/units/webhost/a;Lcab/snapp/passenger/c/d;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcab/snapp/passenger/units/webhost/a;->c:Lcab/snapp/passenger/c/d;

    return-void
.end method

.method public static injectLocationDataManager(Lcab/snapp/passenger/units/webhost/a;Lcab/snapp/passenger/c/e;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcab/snapp/passenger/units/webhost/a;->d:Lcab/snapp/passenger/c/e;

    return-void
.end method

.method public static injectReportManagerHelper(Lcab/snapp/passenger/units/webhost/a;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcab/snapp/passenger/units/webhost/a;->a:Lcab/snapp/passenger/f/b/b/c;

    return-void
.end method

.method public static injectRideDataManager(Lcab/snapp/passenger/units/webhost/a;Lcab/snapp/passenger/c/g;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcab/snapp/passenger/units/webhost/a;->b:Lcab/snapp/passenger/c/g;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/units/webhost/a;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/b;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/webhost/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/webhost/a;Lcab/snapp/passenger/f/b/b/c;)V

    .line 46
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/b;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/webhost/b;->injectRideDataManager(Lcab/snapp/passenger/units/webhost/a;Lcab/snapp/passenger/c/g;)V

    .line 47
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/b;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/d;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/webhost/b;->injectGroupDataManager(Lcab/snapp/passenger/units/webhost/a;Lcab/snapp/passenger/c/d;)V

    .line 48
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/b;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/e;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/webhost/b;->injectLocationDataManager(Lcab/snapp/passenger/units/webhost/a;Lcab/snapp/passenger/c/e;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcab/snapp/passenger/units/webhost/a;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/webhost/b;->injectMembers(Lcab/snapp/passenger/units/webhost/a;)V

    return-void
.end method
