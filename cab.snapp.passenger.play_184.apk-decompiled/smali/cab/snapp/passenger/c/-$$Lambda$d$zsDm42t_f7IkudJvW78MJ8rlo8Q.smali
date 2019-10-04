.class public final synthetic Lcab/snapp/passenger/c/-$$Lambda$d$zsDm42t_f7IkudJvW78MJ8rlo8Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/c/d;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/c/d;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/c/-$$Lambda$d$zsDm42t_f7IkudJvW78MJ8rlo8Q;->f$0:Lcab/snapp/passenger/c/d;

    iput-wide p2, p0, Lcab/snapp/passenger/c/-$$Lambda$d$zsDm42t_f7IkudJvW78MJ8rlo8Q;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcab/snapp/passenger/c/-$$Lambda$d$zsDm42t_f7IkudJvW78MJ8rlo8Q;->f$0:Lcab/snapp/passenger/c/d;

    iget-wide v1, p0, Lcab/snapp/passenger/c/-$$Lambda$d$zsDm42t_f7IkudJvW78MJ8rlo8Q;->f$1:J

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;

    invoke-static {v0, v1, v2, p1}, Lcab/snapp/passenger/c/d;->lambda$zsDm42t_f7IkudJvW78MJ8rlo8Q(Lcab/snapp/passenger/c/d;JLcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;)V

    return-void
.end method
