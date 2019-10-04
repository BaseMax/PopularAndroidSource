.class final Lcab/snapp/passenger/units/footer/mainfooter/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/footer/mainfooter/a;->onUnitCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/e/g<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/footer/mainfooter/a;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/footer/mainfooter/a;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/mainfooter/a$3;->a:Lcab/snapp/passenger/units/footer/mainfooter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/mainfooter/a$3;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/mainfooter/a$3;->a:Lcab/snapp/passenger/units/footer/mainfooter/a;

    invoke-static {v0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->g(Lcab/snapp/passenger/units/footer/mainfooter/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "INTERACTION_CENTER_CHANGED_ON_IDLE"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/mainfooter/a$3;->a:Lcab/snapp/passenger/units/footer/mainfooter/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/mainfooter/a;->h(Lcab/snapp/passenger/units/footer/mainfooter/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/mainfooter/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/mainfooter/c;->showVehiclesLoading()V

    :cond_1
    return-void
.end method
