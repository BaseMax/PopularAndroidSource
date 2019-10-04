.class public final Lcab/snapp/passenger/units/jek_header/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/units/jek_header/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/d;",
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
            "Lcab/snapp/passenger/c/g;",
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
            "Lcab/snapp/passenger/c/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcab/snapp/passenger/units/jek_header/b;->a:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcab/snapp/passenger/units/jek_header/b;->b:Ljavax/inject/Provider;

    .line 24
    iput-object p3, p0, Lcab/snapp/passenger/units/jek_header/b;->c:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/units/jek_header/a;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcab/snapp/passenger/units/jek_header/b;

    invoke-direct {v0, p0, p1, p2}, Lcab/snapp/passenger/units/jek_header/b;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectSnappGroupDataManager(Lcab/snapp/passenger/units/jek_header/a;Lcab/snapp/passenger/c/d;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcab/snapp/passenger/units/jek_header/a;->a:Lcab/snapp/passenger/c/d;

    return-void
.end method

.method public static injectSnappProfileDataManager(Lcab/snapp/passenger/units/jek_header/a;Lcab/snapp/passenger/c/f;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcab/snapp/passenger/units/jek_header/a;->b:Lcab/snapp/passenger/c/f;

    return-void
.end method

.method public static injectSnappRideDataManager(Lcab/snapp/passenger/units/jek_header/a;Lcab/snapp/passenger/c/g;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcab/snapp/passenger/units/jek_header/a;->c:Lcab/snapp/passenger/c/g;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/units/jek_header/a;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcab/snapp/passenger/units/jek_header/b;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/d;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/jek_header/b;->injectSnappGroupDataManager(Lcab/snapp/passenger/units/jek_header/a;Lcab/snapp/passenger/c/d;)V

    .line 40
    iget-object v0, p0, Lcab/snapp/passenger/units/jek_header/b;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/f;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/jek_header/b;->injectSnappProfileDataManager(Lcab/snapp/passenger/units/jek_header/a;Lcab/snapp/passenger/c/f;)V

    .line 41
    iget-object v0, p0, Lcab/snapp/passenger/units/jek_header/b;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/jek_header/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/jek_header/a;Lcab/snapp/passenger/c/g;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcab/snapp/passenger/units/jek_header/a;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/jek_header/b;->injectMembers(Lcab/snapp/passenger/units/jek_header/a;)V

    return-void
.end method
