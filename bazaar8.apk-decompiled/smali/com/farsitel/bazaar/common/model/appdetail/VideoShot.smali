.class public final Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;
.super Ljava/lang/Object;
.source "AppDetail.kt"


# instance fields
.field public final poster:Ljava/lang/String;

.field public final sourceType:Ljava/lang/String;

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;->token:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;->poster:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;->sourceType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPoster()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;->poster:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;->sourceType:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;->token:Ljava/lang/String;

    return-object v0
.end method
