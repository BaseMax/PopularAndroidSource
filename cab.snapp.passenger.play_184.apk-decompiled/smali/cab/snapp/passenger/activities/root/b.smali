.class public final Lcab/snapp/passenger/activities/root/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/activities/root/RootActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/o;",
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
            "Lcab/snapp/passenger/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/d;",
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
            "Lcab/snapp/passenger/c/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/o;",
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
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcab/snapp/passenger/activities/root/b;->a:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcab/snapp/passenger/activities/root/b;->b:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcab/snapp/passenger/activities/root/b;->c:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcab/snapp/passenger/activities/root/b;->d:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcab/snapp/passenger/activities/root/b;->e:Ljavax/inject/Provider;

    .line 39
    iput-object p6, p0, Lcab/snapp/passenger/activities/root/b;->f:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/e;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/o;",
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
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/activities/root/RootActivity;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v7, Lcab/snapp/passenger/activities/root/b;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcab/snapp/passenger/activities/root/b;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static injectReportManagerHelper(Lcab/snapp/passenger/activities/root/RootActivity;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcab/snapp/passenger/activities/root/RootActivity;->g:Lcab/snapp/passenger/f/b/b/c;

    return-void
.end method

.method public static injectShowcaseHelper(Lcab/snapp/passenger/activities/root/RootActivity;Lcab/snapp/passenger/f/o;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcab/snapp/passenger/activities/root/RootActivity;->c:Lcab/snapp/passenger/f/o;

    return-void
.end method

.method public static injectSnappConfigDataManager(Lcab/snapp/passenger/activities/root/RootActivity;Lcab/snapp/passenger/c/b;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcab/snapp/passenger/activities/root/RootActivity;->d:Lcab/snapp/passenger/c/b;

    return-void
.end method

.method public static injectSnappGroupDataManager(Lcab/snapp/passenger/activities/root/RootActivity;Lcab/snapp/passenger/c/d;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcab/snapp/passenger/activities/root/RootActivity;->f:Lcab/snapp/passenger/c/d;

    return-void
.end method

.method public static injectSnappRideDataManager(Lcab/snapp/passenger/activities/root/RootActivity;Lcab/snapp/passenger/c/g;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcab/snapp/passenger/activities/root/RootActivity;->e:Lcab/snapp/passenger/c/g;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/activities/root/RootActivity;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/b;->a:Ljavax/inject/Provider;

    .line 61
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/e;

    .line 60
    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/base/a;->injectSnappLocationDataManager(Lcab/snapp/passenger/activities/base/BaseActivity;Lcab/snapp/passenger/c/e;)V

    .line 62
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/b;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/root/b;->injectShowcaseHelper(Lcab/snapp/passenger/activities/root/RootActivity;Lcab/snapp/passenger/f/o;)V

    .line 63
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/b;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/root/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/activities/root/RootActivity;Lcab/snapp/passenger/c/b;)V

    .line 64
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/b;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/root/b;->injectSnappRideDataManager(Lcab/snapp/passenger/activities/root/RootActivity;Lcab/snapp/passenger/c/g;)V

    .line 65
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/b;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/d;

    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/root/b;->injectSnappGroupDataManager(Lcab/snapp/passenger/activities/root/RootActivity;Lcab/snapp/passenger/c/d;)V

    .line 66
    iget-object v0, p0, Lcab/snapp/passenger/activities/root/b;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/root/b;->injectReportManagerHelper(Lcab/snapp/passenger/activities/root/RootActivity;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/activities/root/b;->injectMembers(Lcab/snapp/passenger/activities/root/RootActivity;)V

    return-void
.end method
