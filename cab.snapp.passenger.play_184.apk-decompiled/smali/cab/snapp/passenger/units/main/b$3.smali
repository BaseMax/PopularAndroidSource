.class final Lcab/snapp/passenger/units/main/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/main/b;->onUnitCreated()V
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
.field final synthetic a:Lcab/snapp/passenger/units/main/b;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/main/b;)V
    .locals 0

    .line 1609
    iput-object p1, p0, Lcab/snapp/passenger/units/main/b$3;->a:Lcab/snapp/passenger/units/main/b;

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

    .line 1613
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b$3;->a:Lcab/snapp/passenger/units/main/b;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/b;->f(Lcab/snapp/passenger/units/main/b;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b$3;->a:Lcab/snapp/passenger/units/main/b;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/b;->g(Lcab/snapp/passenger/units/main/b;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/main/d;->onUpdateMapBoxCopyRightStatus(Ljava/lang/Boolean;)V

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

    .line 1609
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/main/b$3;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
