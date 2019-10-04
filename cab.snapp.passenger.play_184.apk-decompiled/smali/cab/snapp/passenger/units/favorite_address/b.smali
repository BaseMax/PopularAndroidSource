.class public final Lcab/snapp/passenger/units/favorite_address/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/units/favorite_address/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/e;",
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
            "Lcab/snapp/passenger/c/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_address/b;->a:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcab/snapp/passenger/units/favorite_address/b;->b:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcab/snapp/passenger/units/favorite_address/b;->c:Ljavax/inject/Provider;

    .line 29
    iput-object p4, p0, Lcab/snapp/passenger/units/favorite_address/b;->d:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/units/favorite_address/a;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcab/snapp/passenger/units/favorite_address/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcab/snapp/passenger/units/favorite_address/b;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectReportManagerHelper(Lcab/snapp/passenger/units/favorite_address/a;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_address/a;->d:Lcab/snapp/passenger/f/b/b/c;

    return-void
.end method

.method public static injectSnappFavoritesDataManager(Lcab/snapp/passenger/units/favorite_address/a;Lcab/snapp/passenger/c/c;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_address/a;->b:Lcab/snapp/passenger/c/c;

    return-void
.end method

.method public static injectSnappLocationDataManager(Lcab/snapp/passenger/units/favorite_address/a;Lcab/snapp/passenger/c/e;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_address/a;->c:Lcab/snapp/passenger/c/e;

    return-void
.end method

.method public static injectSnappRideDataManager(Lcab/snapp/passenger/units/favorite_address/a;Lcab/snapp/passenger/c/g;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_address/a;->a:Lcab/snapp/passenger/c/g;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/units/favorite_address/a;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/b;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_address/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/favorite_address/a;Lcab/snapp/passenger/c/g;)V

    .line 47
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/b;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_address/b;->injectSnappFavoritesDataManager(Lcab/snapp/passenger/units/favorite_address/a;Lcab/snapp/passenger/c/c;)V

    .line 48
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/b;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/e;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_address/b;->injectSnappLocationDataManager(Lcab/snapp/passenger/units/favorite_address/a;Lcab/snapp/passenger/c/e;)V

    .line 49
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/b;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_address/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/favorite_address/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcab/snapp/passenger/units/favorite_address/a;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/favorite_address/b;->injectMembers(Lcab/snapp/passenger/units/favorite_address/a;)V

    return-void
.end method
