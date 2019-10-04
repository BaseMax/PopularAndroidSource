.class final Lcab/snapp/passenger/units/main/b$2;
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

    .line 1593
    iput-object p1, p0, Lcab/snapp/passenger/units/main/b$2;->a:Lcab/snapp/passenger/units/main/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1597
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1599
    iget-object p1, p0, Lcab/snapp/passenger/units/main/b$2;->a:Lcab/snapp/passenger/units/main/b;

    iget-object p1, p1, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcab/snapp/passenger/units/main/b$2;->a:Lcab/snapp/passenger/units/main/b;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/b;->c(Lcab/snapp/passenger/units/main/b;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcab/snapp/passenger/units/main/b$2;->a:Lcab/snapp/passenger/units/main/b;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/b;->d(Lcab/snapp/passenger/units/main/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1601
    iget-object p1, p0, Lcab/snapp/passenger/units/main/b$2;->a:Lcab/snapp/passenger/units/main/b;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/b;->e(Lcab/snapp/passenger/units/main/b;)V

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

    .line 1593
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/main/b$2;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
