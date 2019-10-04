.class public final synthetic Lcab/snapp/passenger/c/-$$Lambda$c$c8XPB09DL4ipcLHlT9Cg-Te3rkI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/h;


# static fields
.field public static final synthetic INSTANCE:Lcab/snapp/passenger/c/-$$Lambda$c$c8XPB09DL4ipcLHlT9Cg-Te3rkI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcab/snapp/passenger/c/-$$Lambda$c$c8XPB09DL4ipcLHlT9Cg-Te3rkI;

    invoke-direct {v0}, Lcab/snapp/passenger/c/-$$Lambda$c$c8XPB09DL4ipcLHlT9Cg-Te3rkI;-><init>()V

    sput-object v0, Lcab/snapp/passenger/c/-$$Lambda$c$c8XPB09DL4ipcLHlT9Cg-Te3rkI;->INSTANCE:Lcab/snapp/passenger/c/-$$Lambda$c$c8XPB09DL4ipcLHlT9Cg-Te3rkI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;

    invoke-static {p1}, Lcab/snapp/passenger/c/c;->lambda$c8XPB09DL4ipcLHlT9Cg-Te3rkI(Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
