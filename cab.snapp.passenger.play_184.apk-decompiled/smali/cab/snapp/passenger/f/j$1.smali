.class final Lcab/snapp/passenger/f/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/f/j;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/e/g<",
        "Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcab/snapp/passenger/f/j;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/f/j;Ljava/lang/String;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcab/snapp/passenger/f/j$1;->b:Lcab/snapp/passenger/f/j;

    iput-object p2, p0, Lcab/snapp/passenger/f/j$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcab/snapp/passenger/f/j$1;->b:Lcab/snapp/passenger/f/j;

    iget-object v1, p0, Lcab/snapp/passenger/f/j$1;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcab/snapp/passenger/f/j;->a(Lcab/snapp/passenger/f/j;Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 459
    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/f/j$1;->accept(Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;)V

    return-void
.end method
