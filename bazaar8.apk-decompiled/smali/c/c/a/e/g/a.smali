.class public final Lc/c/a/e/g/a;
.super Ljava/lang/Object;
.source "DeveloperReplyModel.kt"


# instance fields
.field public final a:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "reviewItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconUrl"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/g/a;->a:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    iput-object p2, p0, Lc/c/a/e/g/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lc/c/a/e/g/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/a;->a:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    return-object v0
.end method
