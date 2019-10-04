.class public final Lc/c/a/e/d/q/a;
.super Ljava/lang/Object;
.source "RequestPropertiesRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/b/e;


# direct methods
.method public constructor <init>(Lc/c/a/e/b/e;)V
    .locals 1

    const-string v0, "requestPropertiesDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/q/a;->a:Lc/c/a/e/b/e;

    return-void
.end method


# virtual methods
.method public final a()Lcom/farsitel/bazaar/data/entity/RequestProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/q/a;->a:Lc/c/a/e/b/e;

    invoke-virtual {v0}, Lc/c/a/e/b/e;->b()Lcom/farsitel/bazaar/data/entity/RequestProperties;

    move-result-object v0

    return-object v0
.end method
