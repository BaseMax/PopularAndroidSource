.class public final synthetic Lcab/snapp/passenger/data_access_layer/a/-$$Lambda$d$mjySjuMquFW9Juztl_-bf2UGhv4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/h;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/data_access_layer/a/d;


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/data_access_layer/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/-$$Lambda$d$mjySjuMquFW9Juztl_-bf2UGhv4;->f$0:Lcab/snapp/passenger/data_access_layer/a/d;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/-$$Lambda$d$mjySjuMquFW9Juztl_-bf2UGhv4;->f$0:Lcab/snapp/passenger/data_access_layer/a/d;

    check-cast p1, Lcab/snapp/snappnetwork/model/c;

    invoke-static {v0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->lambda$mjySjuMquFW9Juztl_-bf2UGhv4(Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/snappnetwork/model/c;)Lcab/snapp/snappnetwork/model/c;

    move-result-object p1

    return-object p1
.end method
