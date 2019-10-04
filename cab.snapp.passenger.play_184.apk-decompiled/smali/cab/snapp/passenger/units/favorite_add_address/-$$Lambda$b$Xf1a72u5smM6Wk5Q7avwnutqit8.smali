.class public final synthetic Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$Xf1a72u5smM6Wk5Q7avwnutqit8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# instance fields
.field private final synthetic f$0:Lcab/snapp/passenger/units/favorite_add_address/b;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcab/snapp/passenger/units/favorite_add_address/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$Xf1a72u5smM6Wk5Q7avwnutqit8;->f$0:Lcab/snapp/passenger/units/favorite_add_address/b;

    iput-boolean p2, p0, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$Xf1a72u5smM6Wk5Q7avwnutqit8;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$Xf1a72u5smM6Wk5Q7avwnutqit8;->f$0:Lcab/snapp/passenger/units/favorite_add_address/b;

    iget-boolean v1, p0, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$Xf1a72u5smM6Wk5Q7avwnutqit8;->f$1:Z

    check-cast p1, Lcab/snapp/passenger/data/models/FavoriteModel;

    invoke-static {v0, v1, p1}, Lcab/snapp/passenger/units/favorite_add_address/b;->lambda$Xf1a72u5smM6Wk5Q7avwnutqit8(Lcab/snapp/passenger/units/favorite_add_address/b;ZLcab/snapp/passenger/data/models/FavoriteModel;)V

    return-void
.end method
