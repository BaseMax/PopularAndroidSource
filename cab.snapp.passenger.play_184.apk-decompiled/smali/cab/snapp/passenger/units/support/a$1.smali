.class final Lcab/snapp/passenger/units/support/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/c/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/support/a;->callSnappSupport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/support/a;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/support/a;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcab/snapp/passenger/units/support/a$1;->a:Lcab/snapp/passenger/units/support/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPermissionDenied(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 319
    iget-object p1, p0, Lcab/snapp/passenger/units/support/a$1;->a:Lcab/snapp/passenger/units/support/a;

    invoke-static {p1}, Lcab/snapp/passenger/units/support/a;->a(Lcab/snapp/passenger/units/support/a;)Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getCallCenterNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/support/a;->b(Lcab/snapp/passenger/units/support/a;Ljava/lang/String;)V

    return-void
.end method

.method public final onPermissionGranted()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcab/snapp/passenger/units/support/a$1;->a:Lcab/snapp/passenger/units/support/a;

    invoke-static {v0}, Lcab/snapp/passenger/units/support/a;->a(Lcab/snapp/passenger/units/support/a;)Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getCallCenterNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcab/snapp/passenger/units/support/a;->a(Lcab/snapp/passenger/units/support/a;Ljava/lang/String;)V

    return-void
.end method
