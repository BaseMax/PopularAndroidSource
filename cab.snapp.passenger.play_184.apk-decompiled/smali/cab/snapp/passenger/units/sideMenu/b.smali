.class public final Lcab/snapp/passenger/units/sideMenu/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/units/sideMenu/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/authenticator/c;",
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
            "Lcab/snapp/passenger/c/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/h;",
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
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/b;->a:Ljavax/inject/Provider;

    .line 43
    iput-object p2, p0, Lcab/snapp/passenger/units/sideMenu/b;->b:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lcab/snapp/passenger/units/sideMenu/b;->c:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcab/snapp/passenger/units/sideMenu/b;->d:Ljavax/inject/Provider;

    .line 46
    iput-object p5, p0, Lcab/snapp/passenger/units/sideMenu/b;->e:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lcab/snapp/passenger/units/sideMenu/b;->f:Ljavax/inject/Provider;

    .line 48
    iput-object p7, p0, Lcab/snapp/passenger/units/sideMenu/b;->g:Ljavax/inject/Provider;

    .line 49
    iput-object p8, p0, Lcab/snapp/passenger/units/sideMenu/b;->h:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/h;",
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
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/units/sideMenu/a;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v9, Lcab/snapp/passenger/units/sideMenu/b;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcab/snapp/passenger/units/sideMenu/b;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static injectReportManagerHelper(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/a;->g:Lcab/snapp/passenger/f/b/b/c;

    return-void
.end method

.method public static injectSnappAccountManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/authenticator/c;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/a;->h:Lcab/snapp/authenticator/c;

    return-void
.end method

.method public static injectSnappConfigDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/b;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/a;->c:Lcab/snapp/passenger/c/b;

    return-void
.end method

.method public static injectSnappFavoritesDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/c;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/a;->a:Lcab/snapp/passenger/c/c;

    return-void
.end method

.method public static injectSnappGroupDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/d;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/a;->f:Lcab/snapp/passenger/c/d;

    return-void
.end method

.method public static injectSnappProfileDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/f;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/a;->b:Lcab/snapp/passenger/c/f;

    return-void
.end method

.method public static injectSnappRideDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/g;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/a;->e:Lcab/snapp/passenger/c/g;

    return-void
.end method

.method public static injectSnappSearchDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/h;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/a;->d:Lcab/snapp/passenger/c/h;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/units/sideMenu/a;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/b;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/b;->injectSnappFavoritesDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/c;)V

    .line 75
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/b;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/f;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/b;->injectSnappProfileDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/f;)V

    .line 76
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/b;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/b;)V

    .line 77
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/b;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/h;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/b;->injectSnappSearchDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/h;)V

    .line 78
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/b;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/g;)V

    .line 79
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/b;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/d;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/b;->injectSnappGroupDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/d;)V

    .line 80
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/b;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/f/b/b/c;)V

    .line 81
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/b;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/authenticator/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/b;->injectSnappAccountManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/authenticator/c;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcab/snapp/passenger/units/sideMenu/a;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/sideMenu/b;->injectMembers(Lcab/snapp/passenger/units/sideMenu/a;)V

    return-void
.end method
