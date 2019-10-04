.class public final Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;
.super Ljava/lang/Object;
.source "SubmitReviewRequest.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.submitReviewRequest"
.end annotation


# instance fields
.field public final appVersionCode:J
    .annotation runtime Lc/e/d/a/c;
        value = "appVersionCode"
    .end annotation
.end field

.field public final isInline:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isInline"
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "packageName"
    .end annotation
.end field

.field public final rate:I
    .annotation runtime Lc/e/d/a/c;
        value = "rate"
    .end annotation
.end field

.field public final sdkVersion:J
    .annotation runtime Lc/e/d/a/c;
        value = "sdkVersion"
    .end annotation
.end field

.field public final text:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "text"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;JJZ)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;->rate:I

    iput-object p3, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;->text:Ljava/lang/String;

    iput-wide p4, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;->sdkVersion:J

    iput-wide p6, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;->appVersionCode:J

    iput-boolean p8, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;->isInline:Z

    return-void
.end method


# virtual methods
.method public final getAppVersionCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;->appVersionCode:J

    return-wide v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;->rate:I

    return v0
.end method

.method public final getSdkVersion()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;->sdkVersion:J

    return-wide v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final isInline()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;->isInline:Z

    return v0
.end method
