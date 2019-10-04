.class public final synthetic Lcab/snapp/passenger/c/-$$Lambda$c$-otmpkhtIrrBY0GEx4DIHs1XzbA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/h;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/c/-$$Lambda$c$-otmpkhtIrrBY0GEx4DIHs1XzbA;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcab/snapp/passenger/c/-$$Lambda$c$-otmpkhtIrrBY0GEx4DIHs1XzbA;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcab/snapp/passenger/c/-$$Lambda$c$-otmpkhtIrrBY0GEx4DIHs1XzbA;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcab/snapp/passenger/c/-$$Lambda$c$-otmpkhtIrrBY0GEx4DIHs1XzbA;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcab/snapp/passenger/c/-$$Lambda$c$-otmpkhtIrrBY0GEx4DIHs1XzbA;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcab/snapp/passenger/c/-$$Lambda$c$-otmpkhtIrrBY0GEx4DIHs1XzbA;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/passenger/c/-$$Lambda$c$-otmpkhtIrrBY0GEx4DIHs1XzbA;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/passenger/c/-$$Lambda$c$-otmpkhtIrrBY0GEx4DIHs1XzbA;->f$3:Ljava/lang/String;

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/SaveFavoriteResponse;

    invoke-static {v0, v1, v2, v3, p1}, Lcab/snapp/passenger/c/c;->lambda$-otmpkhtIrrBY0GEx4DIHs1XzbA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/SaveFavoriteResponse;)Lcab/snapp/passenger/data/models/FavoriteModel;

    move-result-object p1

    return-object p1
.end method
