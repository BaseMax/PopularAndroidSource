.class final Lcab/snapp/passenger/units/sideMenu/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/sideMenu/a;->onUnitCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/e/g<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/sideMenu/a;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/sideMenu/a;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/a$1;->a:Lcab/snapp/passenger/units/sideMenu/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a$1;->a:Lcab/snapp/passenger/units/sideMenu/a;

    invoke-static {v0}, Lcab/snapp/passenger/units/sideMenu/a;->a(Lcab/snapp/passenger/units/sideMenu/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 480
    iget-object p1, p0, Lcab/snapp/passenger/units/sideMenu/a$1;->a:Lcab/snapp/passenger/units/sideMenu/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/sideMenu/a;->b(Lcab/snapp/passenger/units/sideMenu/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/sideMenu/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/sideMenu/c;->onMenuIsOpened()V

    :cond_0
    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 472
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/sideMenu/a$1;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
