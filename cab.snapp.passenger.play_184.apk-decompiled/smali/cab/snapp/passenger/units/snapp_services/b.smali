.class public final Lcab/snapp/passenger/units/snapp_services/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcab/snapp/passenger/units/snapp_services/b;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b/b/c;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Lcab/snapp/passenger/units/snapp_services/b;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/snapp_services/b;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectReportManagerHelper(Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->a:Lcab/snapp/passenger/f/b/b/c;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_services/b;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/snapp_services/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/snapp_services/b;->injectMembers(Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;)V

    return-void
.end method