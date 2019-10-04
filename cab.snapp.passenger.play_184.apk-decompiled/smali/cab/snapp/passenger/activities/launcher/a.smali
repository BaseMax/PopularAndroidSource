.class public final Lcab/snapp/passenger/activities/launcher/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/activities/launcher/LauncherActivity;",
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
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcab/snapp/passenger/activities/launcher/a;->a:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcab/snapp/passenger/activities/launcher/a;->b:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcab/snapp/passenger/activities/launcher/a;->c:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/activities/launcher/LauncherActivity;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcab/snapp/passenger/activities/launcher/a;

    invoke-direct {v0, p0, p1, p2}, Lcab/snapp/passenger/activities/launcher/a;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectDeepLinkHelper(Lcab/snapp/passenger/activities/launcher/LauncherActivity;Lcab/snapp/passenger/f/b;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->c:Lcab/snapp/passenger/f/b;

    return-void
.end method

.method public static injectReportManagerHelper(Lcab/snapp/passenger/activities/launcher/LauncherActivity;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->b:Lcab/snapp/passenger/f/b/b/c;

    return-void
.end method

.method public static injectSnappRideDataManager(Lcab/snapp/passenger/activities/launcher/LauncherActivity;Lcab/snapp/passenger/c/g;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->a:Lcab/snapp/passenger/c/g;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/activities/launcher/LauncherActivity;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcab/snapp/passenger/activities/launcher/a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/launcher/a;->injectSnappRideDataManager(Lcab/snapp/passenger/activities/launcher/LauncherActivity;Lcab/snapp/passenger/c/g;)V

    .line 37
    iget-object v0, p0, Lcab/snapp/passenger/activities/launcher/a;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/launcher/a;->injectReportManagerHelper(Lcab/snapp/passenger/activities/launcher/LauncherActivity;Lcab/snapp/passenger/f/b/b/c;)V

    .line 38
    iget-object v0, p0, Lcab/snapp/passenger/activities/launcher/a;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b;

    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/launcher/a;->injectDeepLinkHelper(Lcab/snapp/passenger/activities/launcher/LauncherActivity;Lcab/snapp/passenger/f/b;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcab/snapp/passenger/activities/launcher/LauncherActivity;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/activities/launcher/a;->injectMembers(Lcab/snapp/passenger/activities/launcher/LauncherActivity;)V

    return-void
.end method
