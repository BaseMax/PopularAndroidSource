.class public final Lcab/snapp/passenger/units/over_the_map_empty/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcab/snapp/passenger/units/over_the_map_empty/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
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
            "Lcab/snapp/passenger/c/b;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcab/snapp/passenger/units/over_the_map_empty/b;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcab/snapp/passenger/units/over_the_map_empty/a;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcab/snapp/passenger/units/over_the_map_empty/b;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/over_the_map_empty/b;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectM(Lcab/snapp/passenger/units/over_the_map_empty/a;Lcab/snapp/passenger/c/b;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcab/snapp/passenger/units/over_the_map_empty/a;->a:Lcab/snapp/passenger/c/b;

    return-void
.end method


# virtual methods
.method public final injectMembers(Lcab/snapp/passenger/units/over_the_map_empty/a;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcab/snapp/passenger/units/over_the_map_empty/b;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/over_the_map_empty/b;->injectM(Lcab/snapp/passenger/units/over_the_map_empty/a;Lcab/snapp/passenger/c/b;)V

    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lcab/snapp/passenger/units/over_the_map_empty/a;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/over_the_map_empty/b;->injectMembers(Lcab/snapp/passenger/units/over_the_map_empty/a;)V

    return-void
.end method
