.class public final Lcab/snapp/passenger/units/sideMenu/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/units/sideMenu/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/o;",
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
            "Lcab/snapp/passenger/f/o;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/d;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/o;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/units/sideMenu/c;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Lcab/snapp/passenger/units/sideMenu/d;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/sideMenu/d;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectShowcaseHelper(Lcab/snapp/passenger/units/sideMenu/c;Lcab/snapp/passenger/f/o;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/c;->a:Lcab/snapp/passenger/f/o;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/units/sideMenu/c;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/d;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/d;->injectShowcaseHelper(Lcab/snapp/passenger/units/sideMenu/c;Lcab/snapp/passenger/f/o;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lcab/snapp/passenger/units/sideMenu/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/sideMenu/d;->injectMembers(Lcab/snapp/passenger/units/sideMenu/c;)V

    return-void
.end method
