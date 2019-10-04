.class final Lcab/snapp/passenger/units/mainheader/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/mainheader/a;->onUnitCreated()V
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
.field final synthetic a:Lcab/snapp/passenger/units/mainheader/a;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/mainheader/a;)V
    .locals 0

    .line 1165
    iput-object p1, p0, Lcab/snapp/passenger/units/mainheader/a$2;->a:Lcab/snapp/passenger/units/mainheader/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a$2;->a:Lcab/snapp/passenger/units/mainheader/a;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 1173
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1175
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a$2;->a:Lcab/snapp/passenger/units/mainheader/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/a;->d(Lcab/snapp/passenger/units/mainheader/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1177
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a$2;->a:Lcab/snapp/passenger/units/mainheader/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/a;->e(Lcab/snapp/passenger/units/mainheader/a;)Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/c;->onPopOptions()V

    return-void

    .line 1182
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a$2;->a:Lcab/snapp/passenger/units/mainheader/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/a;->f(Lcab/snapp/passenger/units/mainheader/a;)V

    :cond_2
    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1165
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/mainheader/a$2;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
