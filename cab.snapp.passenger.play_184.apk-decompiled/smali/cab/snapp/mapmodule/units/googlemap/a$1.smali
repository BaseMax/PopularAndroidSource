.class final Lcab/snapp/mapmodule/units/googlemap/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/mapmodule/units/googlemap/a;->onUnitCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/e/g<",
        "Lcab/snapp/mapmodule/a/a/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/mapmodule/units/googlemap/a;


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/units/googlemap/a;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a$1;->a:Lcab/snapp/mapmodule/units/googlemap/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcab/snapp/mapmodule/a/a/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    iget v0, p1, Lcab/snapp/mapmodule/a/a/m;->id:I

    iget-object v1, p0, Lcab/snapp/mapmodule/units/googlemap/a$1;->a:Lcab/snapp/mapmodule/units/googlemap/a;

    invoke-static {v1}, Lcab/snapp/mapmodule/units/googlemap/a;->a(Lcab/snapp/mapmodule/units/googlemap/a;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/a$1;->a:Lcab/snapp/mapmodule/units/googlemap/a;

    invoke-static {v0, p1}, Lcab/snapp/mapmodule/units/googlemap/a;->a(Lcab/snapp/mapmodule/units/googlemap/a;Lcab/snapp/mapmodule/a/a/m;)V

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

    .line 106
    check-cast p1, Lcab/snapp/mapmodule/a/a/m;

    invoke-virtual {p0, p1}, Lcab/snapp/mapmodule/units/googlemap/a$1;->accept(Lcab/snapp/mapmodule/a/a/m;)V

    return-void
.end method
