.class public final Lcab/snapp/passenger/units/ticket/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/units/ticket/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
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
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcab/snapp/passenger/units/ticket/b;->a:Ljavax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcab/snapp/passenger/units/ticket/b;->b:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/units/ticket/a;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcab/snapp/passenger/units/ticket/b;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/ticket/b;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectReportManagerHelper(Lcab/snapp/passenger/units/ticket/a;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcab/snapp/passenger/units/ticket/a;->b:Lcab/snapp/passenger/f/b/b/c;

    return-void
.end method

.method public static injectSnappDataLayer(Lcab/snapp/passenger/units/ticket/a;Lcab/snapp/passenger/data_access_layer/a/d;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcab/snapp/passenger/units/ticket/a;->a:Lcab/snapp/passenger/data_access_layer/a/d;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/units/ticket/a;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/b;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ticket/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/ticket/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 31
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/b;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ticket/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/ticket/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcab/snapp/passenger/units/ticket/a;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/ticket/b;->injectMembers(Lcab/snapp/passenger/units/ticket/a;)V

    return-void
.end method
