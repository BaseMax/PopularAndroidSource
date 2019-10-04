.class public final Lcab/snapp/passenger/units/box_options/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/units/box_options/a;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcab/snapp/passenger/units/box_options/b;->a:Ljavax/inject/Provider;

    .line 19
    iput-object p2, p0, Lcab/snapp/passenger/units/box_options/b;->b:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/units/box_options/a;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcab/snapp/passenger/units/box_options/b;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/box_options/b;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectReportManagerHelper(Lcab/snapp/passenger/units/box_options/a;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcab/snapp/passenger/units/box_options/a;->b:Lcab/snapp/passenger/f/b/b/c;

    return-void
.end method

.method public static injectSnappRideDataManager(Lcab/snapp/passenger/units/box_options/a;Lcab/snapp/passenger/c/g;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcab/snapp/passenger/units/box_options/a;->a:Lcab/snapp/passenger/c/g;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/units/box_options/a;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/b;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/box_options/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/box_options/a;Lcab/snapp/passenger/c/g;)V

    .line 32
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/b;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/box_options/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/box_options/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcab/snapp/passenger/units/box_options/a;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/box_options/b;->injectMembers(Lcab/snapp/passenger/units/box_options/a;)V

    return-void
.end method
